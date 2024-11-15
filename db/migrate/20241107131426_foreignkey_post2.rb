class ForeignkeyPost2 < ActiveRecord::Migration[7.2]
  def change
    add_foreign_key :posts, :users, column: :user_uuid, primary_key: :uuid
  end
end
