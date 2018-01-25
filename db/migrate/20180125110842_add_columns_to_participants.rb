class AddColumnsToParticipants < ActiveRecord::Migration[5.1]
  def change
  	add_column :participants, :first_name, :string
    add_column :participants, :last_name, :string 
    add_column :participants, :email, :string
    add_column :participants, :tlfnr, :integer
  end
end
