class AddOkToSaveEntriesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :ok_to_save_entries, :boolean
  end
end
