class ListAllEvents < ActiveRecord::Migration
   extend Cms::DataLoader
  def self.up
    #Find events section so that event details page should be added into events section
    event_section=Section.find_by_name("Events")
    create_page(:showallevents, :name => "Show All Events", :path => "/show-all-events", :section => event_section, :template_file_name => "show_all_events.html.erb", :cacheable => true)  
    pages(:showallevents).publish!
  end

  def self.down
  end
end
