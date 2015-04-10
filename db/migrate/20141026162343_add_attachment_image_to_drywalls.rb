class AddAttachmentImageToDrywalls < ActiveRecord::Migration
  def self.up
    change_table :drywalls do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :drywalls, :image
  end
end
