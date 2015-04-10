class AddAttachmentImageToInteriordesigners < ActiveRecord::Migration
  def self.up
    change_table :interiordesigners do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :interiordesigners, :image
  end
end
