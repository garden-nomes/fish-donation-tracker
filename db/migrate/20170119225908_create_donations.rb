class CreateDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :donations do |t|
      t.references :donor, foreign_key: true
      t.references :category, foreign_key: true
      t.integer :weight, null: false

      t.timestamps
    end
  end
end
