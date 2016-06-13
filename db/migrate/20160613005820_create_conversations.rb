class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.integer :sender
      t.integer :receiver
      t.text :message

      t.timestamps
    end
  end
end
