class Character < ActiveRecord::Base
  belongs_to :user
  belongs_to :organization
  has_many :assigned_characters
  has_many :events, :through => :assigned_characters
  has_many :posts

  def is_part_of(event)
    assigned_characters.create(event_id: event.id)
  end
end
