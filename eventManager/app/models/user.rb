class User < ActiveRecord::Base
	has_many :event_players
	has_many :events, :through => :event_players
end
