class UserController < ApplicationController

    def new
        render :new
    end     

    def create
        @user = User.find_by(params[:user, :email],
                             params[:user, :password])
    end


    private

    def 
end
