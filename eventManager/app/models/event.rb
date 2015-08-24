class Event < ActiveRecord::Base
	scope :future_events, -> (date) {where('begin_date > ?', date)}
	has_many :attendances
	has_many :users, :through => :attendances
  belongs_to :place
  has_many :assigned_characters
  has_many :characters, :through => :assigned_characters
  belongs_to :organization
  has_many :posts
	attr_accessor :places

end
