class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # Role
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role, :first_name, :last_name, :date_of_birth, :gender, :contact_number, :address, :designation])
  end
end
