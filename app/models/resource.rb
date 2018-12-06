class Resource < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :category_resource
  has_many :categories, through: :category_resource
end
