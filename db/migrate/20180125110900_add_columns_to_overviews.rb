class AddColumnsToOverviews < ActiveRecord::Migration[5.1]
  def change
  	add_column :overviews, :event_id, :integer
    add_column :overviews, :participant_id, :integer  
  end
end
