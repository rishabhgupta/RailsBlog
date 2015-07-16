class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  def to_integer(s='0')
  	s.to_i
  end

  def after_sign_in_path_for(resource)
		"/welcome/index"
	end

	def after_sign_up_path_for(resource)
		"/user_details/new"
	end
	def after_sign_out_path_for(resource)
		"/users/sign_in"
	end
end
