class UsersController < ApplicationController

    def login
        user = User.find_by(email: params["user"]["email"], password_digest: params["user"]["password_digest"])
        if user
            render json: user, except: [:created_at, :updated_at]
        else  
            render json: {error: "User not found"}
        end 
    end

    def signup
        user = User.new(user_params)
        if user.save
            render json: user, except: [:created_at, :updated_at]
        else  
            render json: {error: user.errors.full_messages}
        end 
    end 

    private

    def user_params
        params.require(:user).permit(:email, :phone_number, :password_digest, :zipcode)
    end 


end
