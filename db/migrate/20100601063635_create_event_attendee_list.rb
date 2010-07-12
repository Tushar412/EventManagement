class CreateEventAttendeeList < ActiveRecord::Migration
  extend Cms::DataLoader
  def self.up
    #Find Event Section
    events= Section.find_by_name("Events") 
    
    # Create the page to display the event attendees list page
    attendees_list = Page.create!(:name => "Event Attendees List", 
    :path => "/events/attendees_list", 
    :section => events, 
    :template_file_name => "event_attendees_list.html.erb",
    :hidden=> true,
    :cacheable => true)
    attendees_list.publish!
    
    #Create event attendee list Portale.
    EventAttendeesListPortlet.create!(:name => "Event Attendees List Portlet", 
    :template => EventAttendeesListPortlet.default_template,
    :connect_to_page_id => attendees_list.id,
    :connect_to_container => "main")
  end
  
  def self.down
  end
end
