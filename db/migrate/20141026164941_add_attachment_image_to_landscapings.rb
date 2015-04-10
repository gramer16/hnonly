class AddAttachmentImageToLandscapings < ActiveRecord::Migration
  def self.up
    change_table :landscapings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :landscapings, :image
  end
end
