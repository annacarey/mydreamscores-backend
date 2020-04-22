require 'rest-client'

class User < ApplicationRecord
    has_many :journals
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }

    def coronavirus_journal_entries
        self.journals.find_by(title: "coronavirus").journal_entries
    end 

    def self.generate_anonymous_user(zipcode)
        User.create(email: "user#{User.last.id + 1}", zipcode: zipcode, password: "anonymous#{User.last.id + 1}")
    end

    # def send_text_message
    #     puts "in user model"
    #     @client = Twilio::REST::Client.new(ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"]) 
    #     message = @client.messages.create( 
    #         body: "Hi #{name}, Remember to reach out to Rachel!", 
    #         from: '+17692237843',       
    #         to: '+19149074672' 
    #     )
    # end

    def self.send_text_messages
        puts "in user model test test"
        @client = Twilio::REST::Client.new(ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"]) 
        contactable_users = User.all.select {|user| user.ok_to_contact}
        phone_numbers = contactable_users.map {|user| user.phone_number}
        filtered_numbers = phone_numbers.select {|phone_number| User.valid?(phone_number)}
        filtered_numbers.each do |phone_number| 
            @client.messages.create( 
                body: "Good morning, dreamer! Remember to record your dream on DreamScore today: mydreamscore.co", 
                from: ENV["TWILIO_PHONE_NUMBER"],       
                to: phone_number
            )
        end 
    end

    def self.valid?(phone_number)
        @client = Twilio::REST::Client.new(ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"]) 
        begin
          response = @client.lookups.phone_numbers(phone_number).fetch(country_code: 'US') #if invalid, throws an exception. If valid, no problems.
          return true
        rescue => e
            puts e
          if e.code == 20404
            return false
          else
            raise e
        end
      end
    end
end