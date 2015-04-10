class AddAttachmentImageToCustomcabinets < ActiveRecord::Migration
  def self.up
    change_table :customcabinets do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :customcabinets, :image
  end
end
