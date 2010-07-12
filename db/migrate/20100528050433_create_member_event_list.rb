class CreateMemberEventList < ActiveRecord::Migration
  def self.up
    #Find Member profile page 
    member_profile_page= Page.find_by_name("Member Profile") 
    
    #Create member event list Portale.
    MemberEventListPortlet.create!(:name => "Member Event List Portlet", 
    :template => MemberEventListPortlet.default_template,
    :connect_to_page_id => member_profile_page.id,
    :connect_to_container => "main")
  end
  
  def self.down
  end
end
