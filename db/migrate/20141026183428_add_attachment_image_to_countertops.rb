class AddAttachmentImageToCountertops < ActiveRecord::Migration
  def self.up
    change_table :countertops do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :countertops, :image
  end
end
