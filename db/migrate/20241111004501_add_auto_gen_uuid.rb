class AddAutoGenUuid < ActiveRecord::Migration[7.2]
  def change
    remove_column :comments, :id, :integer, if_exists: true

    # Add the new UUID column and set it as the primary key
    add_column :comments, :uuid, :uuid, default: 'gen_random_uuid()', null: false, primary_key: true
  end
end
