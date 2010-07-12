##
# All methods from this helper will be available in the render.html.erb for EventAttendeesListPortlet
module EventAttendeesListPortletHelper
  
  #This function finds all attendees for an event.
  def event_attendees_list(event_id)
    return EventAttendee.find(:all, :conditions=>["event_id=?",event_id ], :order=>"created_at")
  end
  
  #This function give all attendees which attendance recorded by admin.
  def event_attended_users(event_id)
    return EventAttendee.find(:all, :conditions=>["event_id=? and has_attended=?",event_id,true ], :order=>"created_at")
  end
end

