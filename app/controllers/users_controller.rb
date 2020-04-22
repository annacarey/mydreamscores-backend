class UsersController < ApplicationController

    def login
        user = User.find_by(email: params["user"]["email"].downcase)
        if user && user.authenticate(params["user"]["password"])
            token = encode_token(user.id)
            render json: {user: user, token: token}
        elsif !user
            render json: {error: "User not found"} 
        else  
            render json: {error: "Password incorrect"}
        end
    end

    def auto_login
        if session_user
            render json: session_user
        else 
            render json: {errors: "No user found."}
        end 
    end 

    def signup
        user = User.new(user_params)
        user.email.downcase!

        if user.save
            token = encode_token(user.id)
            render json: {user: user, token: token}
        else  
            errors = user.errors.full_messages
            if errors.select{|error| error.split(" ")[0] === "Password"}.length > 1 
                errors.delete_at(1)
            end
            password_confirmation_error = errors.find{|error| error.split(" ")[1] === "confirmation"}
            if password_confirmation_error
                errors[errors.index(password_confirmation_error)] = "Passwords don't match"
            end
            render json: {error: errors}
        end
    end 

    private

    def user_params
        params.require(:user).permit(:email, :phone_number, :password, :password_confirmation, :zipcode, :ok_to_contact, :ok_to_save_entries)
    end 

end
