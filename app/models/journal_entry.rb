class JournalEntry < ApplicationRecord
  belongs_to :journal

  def user 
      self.journal.user
  end 
end
