class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_taxes

  def set_taxes
    store = Store.first
    @taxes = store.tax_rate unless store.nil?
    @discount = 0
  end

end
