class CreateMemberRegistration < ActiveRecord::Migration
   extend Cms::DataLoader
  def self.up
    #Find Member Section
    members= Section.find_by_name("Members") 
    
    # Create the page to display the member registration page
    member_registaration = Page.create!(:name => "Member Registration", 
    :path => "/members/member-registration", 
    :section => members, 
    :template_file_name => "member_registration.html.erb",
    :hidden=> true,
    :cacheable => true)
    member_registaration.publish!
    #Create registration portale.
    MemberRegistrationPortlet.create!(:name => "Member Registration Portlet", 
    :template => MemberRegistrationPortlet.default_template,
    :connect_to_page_id => member_registaration.id,
    :connect_to_container => "main")
  end
  
  def self.down
  end
end
