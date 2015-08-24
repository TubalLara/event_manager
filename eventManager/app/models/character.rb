class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :organization
  has_many :assigned_characters
  has_many :events, :through => :assigned_characters
  has_many :posts
end
