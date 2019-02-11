class Resource < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  validates :name, presence: true, uniqueness: true
  has_many :category_resource
  has_many :categories, through: :category_resource

  def as_indexed_json(options={})
    self.as_json(
      only: [:name, :description, :url],
      include: {
        categories: { only: :name }
      }
    )
  end

  settings index: {
    number_of_shards: 1,
    analysis: {
      analyzer: {
        custom_ptbr: {
          tokenizer: "standard",
          filter: ["lowercase", "asciifolding", "ngrammer"]
        }
      },
      filter: {
        ngrammer: {
          type: :nGram,
          min_gram: 4, max_gram: 16
        }
      }
    }} do
    mapping dynamic: :strict do
      indexes :name,        type: 'text', analyzer: :custom_ptbr
      indexes :description, type: 'text', analyzer: :custom_ptbr
      indexes :url,         type: 'text', analyzer: :standard
      indexes 'categories.name', type: 'keyword'
    end
  end

  def self.search query
    return all unless query
    __elasticsearch__.search(
      query: {
        multi_match: {
          query: query,
          fields: ['nameˆ3', 'description', 'categories.name^2', 'url']
        }
      }
    )
  end

  def self.search_by_category category_name
    return all unless category_name
    __elasticsearch__.search(
      query: {
        term: {
          'categories.name' => category_name
        }
      }
    )
  end
end
