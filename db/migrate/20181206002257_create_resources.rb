class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :name, null: false
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
