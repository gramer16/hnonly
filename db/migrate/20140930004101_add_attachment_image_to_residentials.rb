class AddAttachmentImageToResidentials < ActiveRecord::Migration
  def self.up
    change_table :residentials do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :residentials, :image
  end
end
