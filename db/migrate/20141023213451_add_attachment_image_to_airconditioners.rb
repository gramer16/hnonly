class AddAttachmentImageToAirconditioners < ActiveRecord::Migration
  def self.up
    change_table :airconditioners do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :airconditioners, :image
  end
end
