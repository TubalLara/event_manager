class Event < ActiveRecord::Base
	scope :future_events, -> (date) {where('begin_date > ?', date)}
	has_many :attendances
	has_many :users, :through => :attendances
	attr_accessor :places

end
