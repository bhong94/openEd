class ApplicationController < ActionController::Base
    # redirect to profile page after signing in
    protected
    def after_sign_in_path_for(users)
        if current_user.isMentor
            mentor_path(current_user.mentor.id)
        else
            student_path(current_user.student.id)
        end
    end

    # method call for parameter checking
    before_action :configure_permitted_parameters, if: :devise_controller?

    # allow these parameters for user sign up and sign in
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :isMentor])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
    end
end
