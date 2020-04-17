class User < ApplicationRecord
    has_many :journals
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }
    @@anonymous_counter = 0

    def coronavirus_journal_entries
        self.journals.find_by(title: "coronavirus").journal_entries
    end 

    def self.generate_anonymous_user(zipcode)
        @@anonymous_counter += 1
        User.create(email: "user#{@@anonymous_counter}", zipcode: zipcode, password: "password#{@@anonymous_counter}")
    end
end
