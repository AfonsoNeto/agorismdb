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

  settings index: { number_of_shards: 1 } do
    mapping dynamic: false do
      indexes :name,        analyzer: 'portuguese'
      indexes :description, analyzer: 'portuguese'
      indexes 'categories.name', analyzer: 'portuguese'
    end
  end

  def self.search query
    return all unless query

    __elasticsearch__.search(
      query: {
        multi_match: {
          query: query,
          fields: ['name', 'description', 'categories.name', 'url']
        }
      }
    ).results
  end
end
