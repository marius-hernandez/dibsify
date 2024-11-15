class ChangePostsSchema < ActiveRecord::Migration[7.2]
  def change
    add_column :posts, :user_uuid, :uuid, null: true
  end
end
