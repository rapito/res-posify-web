class HomeController < ApplicationController

  def index
    @open = Order.pending
    @sales = Order.payed

    payed_today = @sales.today
    @day_sales = payed_today.count
    @day_income = sum_income payed_today
    @day_customers = Customer.today.count
  end

  # sums orders income payed today
  def sum_income(payed_today)
    res = 0
    payed_today.each { |order| res += order.net unless order.net.nil? } unless payed_today.nil?
    res
  end

end