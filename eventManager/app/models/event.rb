class Event < ActiveRecord::Base
	has_many :event_players
	has_many :users, :through => :event_players
end
