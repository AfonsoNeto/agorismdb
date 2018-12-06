class CategoryResource < ApplicationRecord
  belongs_to :category
  belongs_to :resource
end
