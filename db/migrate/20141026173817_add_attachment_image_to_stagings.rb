class AddAttachmentImageToStagings < ActiveRecord::Migration
  def self.up
    change_table :stagings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :stagings, :image
  end
end
