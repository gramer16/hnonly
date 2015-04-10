class AddAttachmentImageToSeptics < ActiveRecord::Migration
  def self.up
    change_table :septics do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :septics, :image
  end
end
