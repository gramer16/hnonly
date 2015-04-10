class AddAttachmentImageToHomeinspectors < ActiveRecord::Migration
  def self.up
    change_table :homeinspectors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :homeinspectors, :image
  end
end
