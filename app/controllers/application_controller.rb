class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    def encode_token(id)
        JWT.encode({user_id: id}, ENV["jwt_secret"])
    end 
    def get_auth_header
        request.headers["Authorization"]
    end

    def decoded_token
        begin 
            JWT.decode(get_auth_header, ENV["jwt_secret"])[0]["user_id"]
        rescue 
            nil
        end
    end 


    def session_user
        User.find(decoded_token)
    end

end
