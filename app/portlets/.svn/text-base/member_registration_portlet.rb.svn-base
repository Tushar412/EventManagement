class MemberRegistrationPortlet < Portlet

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    @is_new_record =false
    if flash[:record] 
      @membership_registration = User.new flash[:record] 
    elsif params[:id]
      @membership_registration = current_user
    else 
      @is_new_record = true 
      @membership_registration = User.new(params[:membership_registration] || {}) 
    end
  end
  
end