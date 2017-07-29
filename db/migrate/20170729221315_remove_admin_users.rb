class RemoveAdminUsers < ActiveRecord::Migration[5.0]
  def change
    drop_table :admin_users
  end
end
