class CreateParticipants < ActiveRecord::Migration[5.1]
  def change
    create_table :participants do |t|
      
    t.timestamps
    end
  end
end
