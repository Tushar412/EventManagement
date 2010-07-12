class VideoUploadPortlet < Portlet
  
  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
  
  def render
    if flash[:record] 
      @video = Video.new flash[:record] 
    else  
      @video = Video.new
    end
  end
end