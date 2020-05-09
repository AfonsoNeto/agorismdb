class Category < ApplicationRecord
  include PgSearch::Model

  multisearchable against: :name

  validates :name, presence: true, uniqueness: true
  has_many :category_resource
  has_many :resources, through: :category_resource
end
