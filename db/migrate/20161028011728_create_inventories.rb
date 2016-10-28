class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :serial, unique: true, null: false
      t.integer :size
      t.text :description
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
