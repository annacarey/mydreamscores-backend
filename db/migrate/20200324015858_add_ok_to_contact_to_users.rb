class AddOkToContactToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :ok_to_contact, :boolean
  end
end
