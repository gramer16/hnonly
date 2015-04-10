class AddAttachmentImageToArquitects < ActiveRecord::Migration
  def self.up
    change_table :arquitects do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :arquitects, :image
  end
end
