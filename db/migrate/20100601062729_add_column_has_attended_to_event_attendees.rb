class AddColumnHasAttendedToEventAttendees < ActiveRecord::Migration
  def self.up
    add_column :event_attendees, :has_attended, :boolean ,:default =>false
  end
  
  def self.down
    remove_column :event_attendees, :has_attended
  end
end
