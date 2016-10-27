class AddUsernameToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :username, :string # add a new column to the table "users" called "username" of type string
  	add_index :users, :username, unique: true #first index username for quick look up. Second ensure that usernames are always unique
  end
end
