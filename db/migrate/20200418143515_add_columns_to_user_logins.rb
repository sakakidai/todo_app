class AddColumnsToUserLogins < ActiveRecord::Migration[5.2]
  def change
    add_column :user_logins, :provider, :string
    add_column :user_logins, :uid, :string
  end
end
