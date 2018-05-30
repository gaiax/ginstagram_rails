class AddAvatarColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avatar, :text
  end
end
