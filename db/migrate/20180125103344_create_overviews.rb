class CreateOverviews < ActiveRecord::Migration[5.1]
  def change
    create_table :overviews do |t|
      t.integer :event_id
      t.integer :participant_id

      t.timestamps
    end
  end
end
