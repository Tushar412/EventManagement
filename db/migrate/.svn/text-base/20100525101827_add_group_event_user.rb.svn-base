class AddGroupEventUser < ActiveRecord::Migration
  extend Cms::DataLoader
  def self.up
    #Create two new sections in project.
    create_section(:events,  :name => "Events",  :parent => Section.root.first, :path => "/event", :root => true,:hidden => true,  :group_ids => Group.all.map(&:id))
    create_section(:members, :name => "Members", :parent => Section.root.first, :path => "/member",:root => true,:hidden => true,  :group_ids => Group.all.map(&:id))
    
    #Create a new group.Assign group type as a "Registered Public User".
    group_type_obj =GroupType.find_by_name("Registered Public User")
    create_group(:event_user, :name => 'Event Users', :code => 'event-user', :group_type => group_type_obj)
    
    #Assign group to all existing sections.
    Group.all.each{|g| g.sections = Section.all }    
  end
  
  def self.down
  end
end
