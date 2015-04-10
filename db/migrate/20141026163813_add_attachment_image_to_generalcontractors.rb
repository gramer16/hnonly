class AddAttachmentImageToGeneralcontractors < ActiveRecord::Migration
  def self.up
    change_table :generalcontractors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :generalcontractors, :image
  end
end
