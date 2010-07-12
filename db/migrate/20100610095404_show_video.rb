class ShowVideo < ActiveRecord::Migration
  def self.up
    #Find Member Section
    members= Section.find_by_name("Members") 
    
    # Create the page to play the video 
    play_video = Page.create!(:name => "Show Video", 
    :path => "/members/show-video", 
    :section => members, 
    :template_file_name => "show_video.html.erb",
    :hidden=> true,
    :cacheable => true)
    play_video.publish!
    
    #Create play video portale.
    ShowVideoPortlet.create!(:name => "Show Video Portlet", 
    :template => ShowVideoPortlet.default_template,
    :connect_to_page_id => play_video.id,
    :connect_to_container => "main")
  end
  
  def self.down
  end
end
