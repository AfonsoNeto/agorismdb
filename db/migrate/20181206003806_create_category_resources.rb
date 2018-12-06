class CreateCategoryResources < ActiveRecord::Migration[5.2]
  def change
    create_table :category_resources do |t|
      t.references :category, foreign_key: true, index: true
      t.references :resource, foreign_key: true, index: true

      t.timestamps
    end
  end
end
