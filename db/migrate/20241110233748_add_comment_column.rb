class AddCommentColumn < ActiveRecord::Migration[7.2]
  def change
    add_column :comments, :comment, :string
  end
end
