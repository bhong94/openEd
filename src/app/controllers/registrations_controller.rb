class RegistrationsController < Devise::RegistrationsController
    protected

    def after_sign_up_path_for(users)
        if params[:user]
            if current_user.isMentor
                new_mentor_path
            else
                new_student_path
            end
        else
        end
    end
end
