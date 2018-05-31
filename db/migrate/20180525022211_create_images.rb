class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.text    :image,   null:false
      t.integer :post_id, null:false
      t.timestamps
    end
  end
end
