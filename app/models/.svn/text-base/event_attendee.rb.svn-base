class EventAttendee < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  
  #Ckeck user is event attendee or not?
  def self.is_event_attendee?(event_id,user_id)
    event_attendee = EventAttendee.find(:first, :conditions => { :user_id => user_id, :event_id => event_id })
    if event_attendee.blank?
      return false
    else
      return true
    end
  end
  
  #Mark given user present for an event.
  def self.update_event_invitee_presence(event_id,user_ids)
    EventAttendee.update_all(['has_attended = ?', true],{:user_id => user_ids,:event_id=>event_id})
  end
  
  #Mark given user absent for an event.
  def self.update_event_invitee_absence(event_id,user_ids)
    EventAttendee.update_all(['has_attended = ?', false],["event_id = #{event_id} and user_id not in(?)",user_ids])
  end
  
  def self.update_all_event_invitee_absence(event_id)
    EventAttendee.update_all(['has_attended = ?', false],"event_id = #{event_id}")
  end
end
