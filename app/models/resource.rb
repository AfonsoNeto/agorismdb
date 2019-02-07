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
          filter: ["lowercase", "asciifolding"]
        }
      }
    }} do
    mapping dynamic: true do
      indexes :name,        analyzer: :custom_ptbr
      indexes :description, analyzer: :custom_ptbr
      indexes 'categories.name', analyzer: :keyword
    end
  end

  def self.search query
    return all unless query

    __elasticsearch__.search(
      query: {
        bool: {
          should: [{
            wildcard: {
              name: "*#{query}*"
            }
          },
          {
            wildcard: {
              description: "*#{query}*"
            }
          },
          {
            wildcard: {
              'categories.name': "*#{query}*"
            }
          },
          {
            wildcard: {
              url: "*#{query}*"
            }
          }]
        }
      }
    ).results
  end
end
