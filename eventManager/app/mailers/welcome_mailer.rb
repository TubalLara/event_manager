class WelcomeMailer < ApplicationMailer
	default from: 'larp.event.manager@gmail.com'
	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: 'Welcome, #{@user.name}')
		
	end
end
