class Resource < ApplicationRecord
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
end
