class AddPasswordToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password_digest, :string
    remove_column :users, :last_name, :string
    rename_column :users, :first_name, :name
    rename_column :users, :email_address, :email
  end
end
