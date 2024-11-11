class AddCommentForeignKey < ActiveRecord::Migration[7.2]
  def change
    add_foreign_key :comments, :posts, column: :post_uuid, primary_key: :uuid
    add_foreign_key :comments, :users, column: :user_uuid, primary_key: :uuid
  end
end
