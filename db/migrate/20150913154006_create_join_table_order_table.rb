class CreateJoinTableOrderTable < ActiveRecord::Migration
  def change
    create_join_table :orders, :tables do |t|
      # t.index [:order_id, :table_id]
      # t.index [:table_id, :order_id]
    end
  end
end
