class AddAttachmentImageToMortgages < ActiveRecord::Migration
  def self.up
    change_table :mortgages do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :mortgages, :image
  end
end
