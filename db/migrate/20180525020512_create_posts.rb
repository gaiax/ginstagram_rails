class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :description
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
