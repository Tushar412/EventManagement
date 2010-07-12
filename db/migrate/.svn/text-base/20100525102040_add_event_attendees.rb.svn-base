class AddEventAttendees < ActiveRecord::Migration
  def self.up
    create_table "event_attendees", :force => true do |t|
      t.column :event_id,       :integer,  :null => false
      t.column :user_id,        :integer,  :null => false
      t.column :rsvp_status,    :integer
      t.column :created_at,     :datetime
      t.column :updated_at,     :datetime
    end
    
    add_index :event_attendees, [:event_id, :user_id]
    add_index :event_attendees, :event_id   
  end
  
  def self.down
    drop_table "event_attendees"
  end
end
