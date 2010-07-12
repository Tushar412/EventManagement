class AddVedioTable < ActiveRecord::Migration
  def self.up
    create_table "videos", :force => true do |t|
      t.column :video_url,      :string
      t.column :uploaded_by,    :integer,  :null => false
      t.column :published,      :boolean ,:default =>false
      t.column :created_at,     :datetime
      t.column :updated_at,     :datetime
    end
  end
  
  def self.down
    drop_table "videos"
  end
end
