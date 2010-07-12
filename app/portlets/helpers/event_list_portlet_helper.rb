##
# All methods from this helper will be available in the render.html.erb for EventListPortlet
module EventListPortletHelper
  #This function finds all published events which are not ended.
  def event_list
    require 'date'
    return Event.find(:all, :conditions=>["published=? and ends_on >=?", true, Date.today.to_s], :order=>"ends_on")
  end
end
