class AddAttachmentImageToCashbuyers < ActiveRecord::Migration
  def self.up
    change_table :cashbuyers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :cashbuyers, :image
  end
end
