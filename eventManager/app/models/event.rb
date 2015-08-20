class Event < ActiveRecord::Base
	scope :future_events, -> (date) {where('begin_date > ?', date)}
	has_many :event_players
	has_many :users, :through => :event_players
	attr_accessor :places

end
