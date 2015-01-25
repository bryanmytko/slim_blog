class AddNameToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :first_name, :string, null: false, default: ""
    add_column :admins, :last_name, :string, null: false, default: ""
  end
end
