class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :discount
      t.decimal :brute
      t.decimal :net
      t.boolean :payed
      t.datetime :payed_at
      t.belongs_to :customer, index: true, foreign_key: true
      t.belongs_to :waiter, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
