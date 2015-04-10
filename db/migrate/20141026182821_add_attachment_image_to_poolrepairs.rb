class AddAttachmentImageToPoolrepairs < ActiveRecord::Migration
  def self.up
    change_table :poolrepairs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :poolrepairs, :image
  end
end
