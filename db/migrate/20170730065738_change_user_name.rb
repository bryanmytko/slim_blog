class ChangeUserName < ActiveRecord::Migration[5.0]
  def change
    remove_column :admin_users, :first_name, :string
    remove_column :admin_users, :last_name, :string
    add_column :admin_users, :name, :string
  end
end
