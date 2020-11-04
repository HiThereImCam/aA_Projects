class ApplicationController < ActionController::Base

    helper_method :current_user

    def current_user
        # where session[] is the cookie

        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    def logged_in?
        
    end 
end
