class User < ActiveRecord::Base
	has_many :attendances
	has_many :events, :through => :attendances

	has_secure_password

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	validates :name,  presence: true, length: { maximum: 50 }
  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
                	format: { with: VALID_EMAIL_REGEX },
                	uniqueness: { case_sensitive: false }
  	validates :password, presence: true, length: { minimum: 8 }


  	after_initialize :set_default_role, :if => :new_record?
  	def set_default_role
  		unless self.role
  			self.role = :user  			
  		end
  	end

    def attend(event)
      attendances.create(event_id: event.id)
    end

    

end
