class AddAttachmentImageToPoolcleaners < ActiveRecord::Migration
  def self.up
    change_table :poolcleaners do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :poolcleaners, :image
  end
end
