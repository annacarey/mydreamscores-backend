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
end
