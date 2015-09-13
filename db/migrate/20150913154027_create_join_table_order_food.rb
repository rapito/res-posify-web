class CreateJoinTableOrderFood < ActiveRecord::Migration
  def change
    create_join_table :orders, :foods do |t|
      # t.index [:order_id, :food_id]
      # t.index [:food_id, :order_id]
      t.boolean :returned
    end
  end
end
