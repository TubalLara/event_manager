class AddIsOrganizerToEventsPlayers < ActiveRecord::Migration
  def change
  	add_column :event_players, :is_organizer, :boolean
  end
end
