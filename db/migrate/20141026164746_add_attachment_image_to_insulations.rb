class AddAttachmentImageToInsulations < ActiveRecord::Migration
  def self.up
    change_table :insulations do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :insulations, :image
  end
end
