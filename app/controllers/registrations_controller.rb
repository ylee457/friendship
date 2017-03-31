class RegistrationsController < Devise::RegistrationsController

	before_action :configure_permitted_parameters


  protected

	# /after_sign_up_path_for/
  # This action is hit after a user registers through the devise registration form
  def after_sign_up_path_for(resource)
  	after_sign_in_path_for(resource)
  end

  def configure_permitted_parameters
  	
  	# by using a block - passing in all the keys for permission
  	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :name) } 

  	# another way . See doc http://www.rubydoc.info/github/plataformatec/devise/master/Devise/ParameterSanitizer
  	# The sanitizer knows about Devise default parameters (like password and password_confirmation)
  	devise_parameter_sanitizer.permit(:account_update, keys: [:email, :name]) 

  	devise_parameter_sanitizer.permit(:sign_in, keys: [:email]) 


  end
end