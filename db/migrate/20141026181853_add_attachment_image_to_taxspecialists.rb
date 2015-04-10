class AddAttachmentImageToTaxspecialists < ActiveRecord::Migration
  def self.up
    change_table :taxspecialists do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :taxspecialists, :image
  end
end
