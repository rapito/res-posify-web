class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.belongs_to :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
