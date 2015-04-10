class AddAttachmentImageToRealtors < ActiveRecord::Migration
  def self.up
    change_table :realtors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :realtors, :image
  end
end
