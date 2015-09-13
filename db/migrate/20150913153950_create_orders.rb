class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :discount
      t.decimal :brute
      t.decimal :net
      t.boolean :payed
      t.datetime :payed_at
      t.string :customer
      t.string :waiter

      t.timestamps null: false
    end
  end
end
