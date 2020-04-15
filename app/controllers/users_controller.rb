class UsersController < ApplicationController

    def login
        user = User.find_by(email: params["user"]["email"].downcase)
        if user && user.authenticate(params["user"]["password"])
            render json: user, except: [:created_at, :updated_at]
        elsif !user
            render json: {error: "User not found"} 
        else  
            render json: {error: "Password incorrect"}
        end
    end

    def signup
        user = User.new(user_params)
        user.email.downcase!

        if user.save
            render json: user, except: [:created_at, :updated_at]
        else  
            render json: {error: user.errors.full_messages}
        end 
    end 

    private

    def user_params
        params.require(:user).permit(:email, :phone_number, :password, :password_confirmation, :zipcode, :ok_to_contact, :ok_to_save_entries)
    end 

end
