class AddAttachmentImageToHardmoneys < ActiveRecord::Migration
  def self.up
    change_table :hardmoneys do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :hardmoneys, :image
  end
end
