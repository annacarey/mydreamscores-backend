class AddRegionToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :region, :string
  end
end
