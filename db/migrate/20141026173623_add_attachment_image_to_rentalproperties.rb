class AddAttachmentImageToRentalproperties < ActiveRecord::Migration
  def self.up
    change_table :rentalproperties do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :rentalproperties, :image
  end
end
