class User < ActiveRecord::Base
	has_many :event_players
	has_many :events, :through => :event_players

	has_secure_password

	validates :email, presence: true, length: { maximum: 255 },
                	# format: { with: VALID_EMAIL_REGEX },
                	uniqueness: { case_sensitive: false }
  	validates :password, presence: true, length: { minimum: 8 }


end
