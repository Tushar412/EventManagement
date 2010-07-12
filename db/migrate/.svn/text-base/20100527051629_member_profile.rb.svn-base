class MemberProfile < ActiveRecord::Migration
  def self.up
    #Find Member Section
    members= Section.find_by_name("Members") 
   
    # Create the page to display the member profile page
    member_profile = Page.create!(:name => "Member Profile", 
    :path => "/members/profile", 
    :section => members, 
    :template_file_name => "member_profile.html.erb",
    :hidden=> true,
    :cacheable => true)
    member_profile.publish!
    
    #Create Member Profile Portale.
    MemberProfilePortlet.create!(:name => "Member Profile Portlet", 
    :template => MemberProfilePortlet.default_template,
    :connect_to_page_id => member_profile.id,
    :connect_to_container => "main")
  end
  
  def self.down
  end
end
