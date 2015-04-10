class AddAttachmentImageToAccountants < ActiveRecord::Migration
  def self.up
    change_table :accountants do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :accountants, :image
  end
end
