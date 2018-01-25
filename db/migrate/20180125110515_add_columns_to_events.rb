class AddColumnsToEvents < ActiveRecord::Migration[5.1]
  def change
  	add_column :events, :name, :text
    add_column :events, :description, :text 
    add_column :events, :image_url, :string
    add_column :events, :start_date, :date
    add_column :events, :start_time, :time
  end
end
 