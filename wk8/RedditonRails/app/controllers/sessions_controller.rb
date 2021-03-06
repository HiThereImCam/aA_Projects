class SessionsController < ApplicationController

    def new; end

    def create
        user = User.find_by_credentials(params[:user][:username],
                                        params[:user][:password])

        if user
            login(user)
            redirect_to subs_url
        else
            flash.now[:errors] = user.errors.full_messages
            render :new
        end
    end
    
    def destroy
        logout! if is_logged_in?
        redirect_to new_session_url
    end
end
