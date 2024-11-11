class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.string :user_uuid
      t.string :post_uuid

      t.timestamps
    end
  end
end
