class User < ApplicationRecord
    has_many :journals
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }

    def coronavirus_journal_entries
        self.journals.find_by(title: "Coronavirus").journal_entries
    end 
end
