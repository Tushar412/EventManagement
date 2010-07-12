##
# All methods from this helper will be available in the render.html.erb for ArchiveEventsPortlet
module ArchiveEventsPortletHelper
  
  #This function finds all published events which are ended.
  def archive_events_list
    require 'date'
    return Event.find(:all, :conditions=>["published=? and ends_on < ?", true, Date.today.to_s], :order=>"ends_on desc")
  end
end
