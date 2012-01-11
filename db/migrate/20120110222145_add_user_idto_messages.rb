class AddUserIdtoMessages < ActiveRecord::Migration
  def up
    add_column :messages, :user_id, :integer
  end

  def down
  end
end
