class AddAttachmentImageToFramings < ActiveRecord::Migration
  def self.up
    change_table :framings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :framings, :image
  end
end
