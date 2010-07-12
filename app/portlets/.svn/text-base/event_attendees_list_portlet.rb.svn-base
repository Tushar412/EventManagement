class EventAttendeesListPortlet < Portlet
  include EventAttendeesListPortletHelper
  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
  
  def render
    #find all attendees for an event.
    @event_attendees = event_attendees_list(params[:event_id])
    
    #find event attended users
    @event_attendee_array= []
    attendees = event_attended_users(params[:event_id])
    unless attendees.blank?
      attendees.each{|attendee|
        @event_attendee_array << attendee.user_id
      }
    end
  end
end