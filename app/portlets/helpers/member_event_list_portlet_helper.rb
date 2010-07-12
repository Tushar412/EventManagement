##
# All methods from this helper will be available in the render.html.erb for MemberEventListPortlet
module MemberEventListPortletHelper
  
  #Return true or false based on user attendance for an event.
  def user_has_access_to_certificate(user_id,event_id)
    permission = EventAttendee.find(:first,:conditions=>["has_attended=? and user_id=? and event_id=?",true,user_id,event_id])
    if permission.blank?
      return false
    else
      return true
    end
  end
end
