class AddAttachmentImageToPropertymanagementfirms < ActiveRecord::Migration
  def self.up
    change_table :propertymanagementfirms do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :propertymanagementfirms, :image
  end
end
