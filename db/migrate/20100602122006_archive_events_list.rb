class ArchiveEventsList < ActiveRecord::Migration
  extend Cms::DataLoader
  def self.up
    #Find Event Section
    events= Section.find_by_name("Events") 
    
    # Create the page to display all the archived events
    archive_events = Page.create!(:name => "Archive Events List", 
    :path => "/events/archive_events", 
    :section => events, 
    :template_file_name => "archive_events_list.html.erb",
    :hidden=> true,
    :cacheable => true)
    archive_events.publish!
    
    #Create archive events list Portale.
    ArchiveEventsPortlet.create!(:name => "Archive Events Portlet", 
    :template => ArchiveEventsPortlet.default_template,
    :connect_to_page_id => archive_events.id,
    :connect_to_container => "main")
  end
  
  def self.down
  end
end
