class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception




   #configure desise to add more fields
   before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :username, :contact, :matricule, :city, :gender, :level_id, :school_name, :status])
    #:class_name, :resume
  end

end
