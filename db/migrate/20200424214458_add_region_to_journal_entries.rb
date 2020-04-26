class AddRegionToJournalEntries < ActiveRecord::Migration[6.0]
  def change
    add_column :journal_entries, :region, :string
  end
end
