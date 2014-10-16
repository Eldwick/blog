class CreateCommentsPosts < ActiveRecord::Migration
  def change
    create_table :comments_posts, id: false do |t|
      t.belongs_to :comments
      t.belongs_to :posts
    end
  end
end
