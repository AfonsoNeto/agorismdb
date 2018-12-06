class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :category_resource
  has_many :resources, through: :category_resource
end
