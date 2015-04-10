class AddAttachmentImageToPaintings < ActiveRecord::Migration
  def self.up
    change_table :paintings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :paintings, :image
  end
end
