class MemberEventListPortlet < Portlet
  
  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
  
  def render
    #find all the events of logged in user.
    if logged_in?
      @event_joined = EventAttendee.find(:all, :conditions=>["user_id=?", current_user.id])
    end
  end
end