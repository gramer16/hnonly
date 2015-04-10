class AddAttachmentImageToSolarscreens < ActiveRecord::Migration
  def self.up
    change_table :solarscreens do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :solarscreens, :image
  end
end
