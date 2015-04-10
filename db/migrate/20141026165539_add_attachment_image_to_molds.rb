class AddAttachmentImageToMolds < ActiveRecord::Migration
  def self.up
    change_table :molds do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :molds, :image
  end
end
