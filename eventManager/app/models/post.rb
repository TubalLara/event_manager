class Post < ActiveRecord::Base
  belongs_to :place
  belongs_to :user
  belongs_to :organization
  belongs_to :character
  belongs_to :event
end
