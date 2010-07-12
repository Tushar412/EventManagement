class CreateMemberLogin < ActiveRecord::Migration
  extend Cms::DataLoader
  def self.up
    #Find Member Section
    members= Section.find_by_name("Members") 
   
    # Create the page to display the member login page
    member_login = Page.create!(:name => "Member Login", 
    :path => "/members/login", 
    :section => members, 
    :template_file_name => "member_login.html.erb",
    :hidden=> true,
    :cacheable => true)
    member_login.publish!
    #Create registration portale.
    MemberLoginPortlet.create!(:name => "Member Login Portlet", 
    :template => MemberLoginPortlet.default_template,
    :connect_to_page_id => member_login.id,
    :connect_to_container => "main")
  end
  
  def self.down
  end
end
