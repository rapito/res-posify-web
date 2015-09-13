class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.string :category

      t.timestamps null: false
    end
  end
end
