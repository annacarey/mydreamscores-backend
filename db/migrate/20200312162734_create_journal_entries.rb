class CreateJournalEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :journal_entries do |t|
      t.text :content
      t.string :zipcode
      t.float :sentiment
      t.float :magnitude
      t.references :journal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
