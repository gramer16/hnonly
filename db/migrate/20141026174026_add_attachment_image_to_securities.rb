class AddAttachmentImageToSecurities < ActiveRecord::Migration
  def self.up
    change_table :securities do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :securities, :image
  end
end
