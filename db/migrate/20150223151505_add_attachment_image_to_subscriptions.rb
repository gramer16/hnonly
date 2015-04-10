class AddAttachmentImageToSubscriptions < ActiveRecord::Migration
  def self.up
    change_table :subscriptions do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :subscriptions, :image
  end
end
