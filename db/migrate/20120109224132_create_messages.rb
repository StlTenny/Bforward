class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :to
      t.string :from
      t.string :subject
      t.text :body
      t.boolean :sent
      t.boolean :received
      t.boolean :has_attach

      t.timestamps
    end
  end
end
