class EventDetailsPortlet < Portlet
include EventDetailsPortletHelper
  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    # Your Code Goes Here
    unless params[:id].blank?
      @event=find_event(params[:id])
    end
  end
end