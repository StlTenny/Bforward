class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.string :username
      t.string :description

      t.timestamps
    end
  end
end
