class AddPostIdToComments < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.integer :post_id
    end
  end
end
