class AddAttachmentImageToFloorings < ActiveRecord::Migration
  def self.up
    change_table :floorings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :floorings, :image
  end
end
