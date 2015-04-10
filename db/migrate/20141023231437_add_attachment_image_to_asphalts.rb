class AddAttachmentImageToAsphalts < ActiveRecord::Migration
  def self.up
    change_table :asphalts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :asphalts, :image
  end
end
