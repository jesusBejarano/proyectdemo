class AddAttachmentAvatarToPlatos < ActiveRecord::Migration
  def self.up
    change_table :platos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :platos, :avatar
  end
end
