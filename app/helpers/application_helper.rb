module ApplicationHelper

  def app_name
    name = Store.first.name
    name = 'ResPOSify' if Store.first.nil?
    name
  end

end
