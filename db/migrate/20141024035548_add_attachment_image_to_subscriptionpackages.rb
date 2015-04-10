class AddAttachmentImageToSubscriptionpackages < ActiveRecord::Migration
  def self.up
    change_table :subscriptionpackages do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :subscriptionpackages, :image
  end
end
