class AddAttachmentImageToPrivatebanks < ActiveRecord::Migration
  def self.up
    change_table :privatebanks do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :privatebanks, :image
  end
end
