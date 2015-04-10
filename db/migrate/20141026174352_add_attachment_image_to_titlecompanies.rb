class AddAttachmentImageToTitlecompanies < ActiveRecord::Migration
  def self.up
    change_table :titlecompanies do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :titlecompanies, :image
  end
end
