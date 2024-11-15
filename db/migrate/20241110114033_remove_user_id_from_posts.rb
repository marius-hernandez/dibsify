class RemoveUserIdFromPosts < ActiveRecord::Migration[7.2]
  def change
    remove_column :posts, :username, :string
  end
end
