class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :name
      t.decimal :capacity
      t.boolean :indoor

      t.timestamps null: false
    end
  end
end
