class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :waiter
  has_and_belongs_to_many :tables
end
