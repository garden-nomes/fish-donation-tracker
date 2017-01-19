class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false, index: true
      t.decimal :price, precision: 8, scale: 4
      t.boolean :food, default: true

      t.timestamps
    end
  end
end
