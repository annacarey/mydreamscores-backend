class User < ApplicationRecord
    has_many :journals

    def coronavirus_journal_entries
        self.journals.find_by(title: "Coronavirus").journal_entries
    end 
end
