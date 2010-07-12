class AddVedioUpload < ActiveRecord::Migration
  def self.up
    #Find Member Section
    members= Section.find_by_name("Members") 
    
    # Create the page to display the video upload form
    upload_video = Page.create!(:name => "Video Upload", 
    :path => "/members/upload-video", 
    :section => members, 
    :template_file_name => "upload_video.html.erb",
    :hidden=> true,
    :cacheable => true)
    upload_video.publish!
    #Create video upload portale.
    VideoUploadPortlet.create!(:name => "Video Upload Portlet", 
    :template => VideoUploadPortlet.default_template,
    :connect_to_page_id => upload_video.id,
    :connect_to_container => "main")
  end
  
  def self.down
  end
end
