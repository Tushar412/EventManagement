class EventAttendeesController < ApplicationController
  include Cms::Authentication::Controller
  require 'pdf/writer'
  Mime::Type.register 'application/pdf', :pdf
  
  #Add event attendee for selected event.
  def join_event
    unless params[:event_id].blank?
      event=Event.find(params[:event_id].to_i)
      if EventAttendee.is_event_attendee?(params[:event_id],current_user.id)
        flash[:notice] = "You are already part of #{event.name} event."
      else
        EventAttendee.create(:event_id=>params[:event_id], :user_id=>current_user.id, :rsvp_status=>1)
        flash[:notice] = "You have joined \"#{event.name}\" event successfully."
      end
    end
    redirect_to "/event-details?id=#{params[:event_id]}"
  end
  
  #This method used for generating event certificate.
  def generate_event_pdf
    event = Event.find(params[:id])
    pdf = PDF::Writer.new()
    pdf.image "public/images/about-neova.jpg"
    pdf.select_font "Courier"
    pdf.margins_pt(36)
    pdf.text "CERTIFICATE OF ATTENDANCE", :font_size => 32,:justification => :center,:spacing => 2
    pdf.text "This is to certify that", :font_size => 15, :justification => :center,:spacing => 3
    pdf.text "#{current_user.full_name}", :font_size =>25,:justification => :center,:spacing => 2
    pdf.text "attended the event", :font_size =>15,:justification => :center,:spacing => 2
    pdf.text "#{event.name}", :font_size =>25,:justification => :center,:spacing => 2
    pdf.text "held on #{event.starts_on}",:font_size => 15,:justification => :center,:spacing => 2
    respond_to do |format|
      format.pdf do
        send_data pdf.render, :filename => 'event.pdf', :type => 'application/pdf',  :disposition => 'attachment'
      end
    end
    #pdf.save_as("public/event_certificate_user#{current_user.id}_event#{event.id}.pdf")
    #send_file "public/event_certificate_user#{current_user.id}_event#{event.id}.pdf", :type => 'application/pdf'
  end
  
  #Update User attendace for an event.
  def update_attendance
    unless params[:attendees_ids].blank?
      EventAttendee.update_event_invitee_presence(params[:event_id],params[:attendees_ids])
      EventAttendee.update_event_invitee_absence(params[:event_id],params[:attendees_ids])
    else
      EventAttendee.update_all_event_invitee_absence(params[:event_id])
    end
    flash[:notice] = "The attendance of the members for the Event '#{params[:event_name]}' has been updated successfully."
    redirect_to "/events/attendees_list?event_id=#{params[:event_id]}"
  end
end
