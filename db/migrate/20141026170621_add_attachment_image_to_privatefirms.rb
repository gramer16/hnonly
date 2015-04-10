class AddAttachmentImageToPrivatefirms < ActiveRecord::Migration
  def self.up
    change_table :privatefirms do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :privatefirms, :image
  end
end
