class ForeignkeyPost < ActiveRecord::Migration[7.2]
  def change
    remove_column :users, :id, :integer, if_exists: true
    add_column :users, :uuid, :uuid, default: 'gen_random_uuid()', null: false, primary_key: true
  end
end
