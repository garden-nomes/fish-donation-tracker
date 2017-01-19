class CreateDonors < ActiveRecord::Migration[5.0]
  def change
    create_table :donors do |t|
      t.string :name, null: false, index: true
      t.boolean :trucking_company, default: false

      t.timestamps
    end
  end
end
