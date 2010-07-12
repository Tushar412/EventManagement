##
# All methods from this helper will be available in the render.html.erb for EventDetailsPortlet
module EventDetailsPortletHelper
  def find_event(event_id)
    return Event.find(event_id)
  end  
  
  #check user is part of event or not?
  def member_is_event_attendee?(user_id,event_id)
    event_attendee = EventAttendee.find(:first, :conditions => { :user_id => user_id, :event_id => event_id })
    if event_attendee.blank?
      return false
    else
      return true
    end
  end
  
  #check for upcoming event
  def is_upcoming_event?(event_id)
    current_time = Time.now
    event = Event.find(:first,:conditions => ['ends_on >? and id=?',current_time,event_id])
    if event.blank?
      return false
    else
      return true
    end
  end
end
