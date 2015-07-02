class UserMailer < ApplicationMailer
	default from: 'notification@stagespace.in'

	def welcome_email(user)
		@user = user
		@url = 'users/sign_in'
		mail(to: @user.email, subject: 'Welcome to stagespace.') 
	end
end
