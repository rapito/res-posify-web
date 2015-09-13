class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.date :birthday
      t.string :phone

      t.timestamps null: false
    end
  end
end
