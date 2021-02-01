class ApplicationController < ActionController::Base
    layout"nogizaka"

    def after_sign_in_path_for(resource)
        if Nogizaka.where(name: current_nogimasa.username).blank?
            new_nogizaka_path(resource)
        else
            nogitops_path(resource)
        end
    end
    
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
    
    def configure_permitted_parameters
      added_attrs = [ :email, :username, :password, :password_confirmation ]
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username]) 
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
      devise_parameter_sanitizer.permit :sign_in, keys: [:username]
    end
    #helper_method :current_user
    #before_action :login_required

    private

    #def current_user
        #@current_user ||=User.find_by(id: session[:user_id]) if session[:user_id]
    #end

    #def login_required
        #redirect_to login_url unless current_user
    #end
end
