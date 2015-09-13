class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.text :description
      t.string :phone
      t.string :address
      t.decimal :tax_rate
      t.string :website

      t.timestamps null: false
    end
  end
end
