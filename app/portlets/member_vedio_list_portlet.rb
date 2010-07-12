class MemberVedioListPortlet < Portlet
  
  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
  
  def render
    #find all the video of logged in user.
    if logged_in?
      @videos = Video.find(:all, :conditions=>["uploaded_by=?", current_user.id])
    end
  end
end