class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :check_user_login

  def check_user_login
  	if current_user
  		super
  	else
  		render 'devise/sessions/new'
  	end
  end

end
