class Order < ActiveRecord::Base
  include OrdersHelper
  include SharedScopes

  belongs_to :customer
  belongs_to :waiter
  has_and_belongs_to_many :tables
  has_and_belongs_to_many :foods

  scope :pending, -> { where(payed: false) }
  scope :payed, -> { where(payed: true).order(payed_at: 'desc') }

end
