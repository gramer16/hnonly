class AddAttachmentImageToRoofings < ActiveRecord::Migration
  def self.up
    change_table :roofings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :roofings, :image
  end
end
