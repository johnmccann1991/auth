class SessionsController < ApplicationController

    def new


    def create
        entered_email = params["email"]
        entered_password = params ["password"]
        @user = User.find_by({email: entered_email})
        if @user
            if BCrypt::Password.new(@user.password) == entered_password
                redirect_to"/companies"
        else
            redirect_to "/sessions/new"
        end
    else
        redirect_to"/sessions/new"
    end 



    def destroy
        session ["user id"] = nil
        flash [:notice] = 'You have been logged out"
        redirect_to

end
