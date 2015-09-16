class Food < ActiveRecord::Base
  belongs_to :category

  def name_with_price
    "#{self.name} - $#{self.price}"
  end
end
