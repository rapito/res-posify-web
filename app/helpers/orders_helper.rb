module OrdersHelper
  # def waiters_list(order=self)
  #   order = self if order.nil?
  #
  #   res = ''
  #   order.waiters.each_with_index do |x, i|
  #     l = order.waiters.length
  #     res += x.name
  #     res += ', ' unless i+1 != l
  #   end
  #   res
  # end

  def tables_list(order=self)
    order = self if order.nil?

    res = ''
    order.tables.each_with_index do |x, i|
      l = order.tables.length
      res += x.name
      res += ', ' unless i+1 == l
    end
    res
  end
end
