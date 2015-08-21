class RenameEventplayersToAttendances < ActiveRecord::Migration
  def change
    rename_table :event_players, :attendances
  end 
end
