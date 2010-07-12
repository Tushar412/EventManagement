class MemberProfilePortlet < Portlet
  
  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
  
  def render
    if logged_in?
      @member = User.find_by_id(current_user.id)
    end
  end
  
end