class EventListPortlet < Portlet
  include EventListPortletHelper
  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
  
  def render
    # Your Code Goes Here
    @view_all_link=false
    #Get all events
    events=event_list
    #If number of events are greater than five then show view all link
     @view_all_link=true if events.size > 5
    #If the request don't have "all" parameter then show only 5 events, Otherwise all events
    if params[:all].blank?
      @events=events.first(5)
    else
      @events=events
    end
    
  end
  
end