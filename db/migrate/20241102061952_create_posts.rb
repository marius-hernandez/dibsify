class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts, id: :uuid do |t|
      t.string :username
      t.text :content

      t.timestamps
    end
  end
end
