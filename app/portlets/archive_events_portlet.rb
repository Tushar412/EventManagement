class ArchiveEventsPortlet < Portlet
  include ArchiveEventsPortletHelper
  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
  
  def render
    #Get all archive events
    @archive_events=archive_events_list
  end
end