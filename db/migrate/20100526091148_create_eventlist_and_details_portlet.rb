class CreateEventlistAndDetailsPortlet < ActiveRecord::Migration
  extend Cms::DataLoader
  def self.up
    #Create event list portlet
     EventListPortlet.create!(:name => "Event List Portlet", 
        :template => EventListPortlet.default_template,
        :connect_to_container => "main")
#Find events section so that event details page should be added into events section
    event_section=Section.find_by_name("Events")

    event_details=create_page(:eventdetails, :name => "Event Details", :path => "/event-details", :section => event_section, :template_file_name => "event_details.html.erb", :cacheable => true)  
    pages(:eventdetails).publish!
     EventDetailsPortlet.create!(:name => "Event Details Portlet", 
        :template => EventDetailsPortlet.default_template,
        :connect_to_page_id => event_details.id,
        :connect_to_container => "main")
  end

  def self.down
  end
end
