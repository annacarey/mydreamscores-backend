class CreateJournalEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries do |t|
      t.text :content
      t.float :sentiment_score
      t.float :sentiment_magnitude
      t.references :journal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
