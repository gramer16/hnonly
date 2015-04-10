class AddAttachmentImageToPlumbings < ActiveRecord::Migration
  def self.up
    change_table :plumbings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :plumbings, :image
  end
end
