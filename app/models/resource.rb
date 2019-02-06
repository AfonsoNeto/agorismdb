class Resource < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  validates :name, presence: true, uniqueness: true
  has_many :category_resource
  has_many :categories, through: :category_resource
end
