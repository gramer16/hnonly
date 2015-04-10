class AddAttachmentImageToMovingcompanies < ActiveRecord::Migration
  def self.up
    change_table :movingcompanies do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :movingcompanies, :image
  end
end
