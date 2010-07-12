class MemberVedioList < ActiveRecord::Migration
  def self.up
    #Create member video list portale.
    
    MemberVedioListPortlet.create!(:name => "Video List Portlet", 
    :template => MemberVedioListPortlet.default_template,
    :connect_to_container => "main")
  end

  def self.down
  end
end
