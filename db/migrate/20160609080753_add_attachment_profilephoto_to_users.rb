class AddAttachmentProfilephotoToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :profilephoto
    end
  end

  def self.down
    remove_attachment :users, :profilephoto
  end
end
