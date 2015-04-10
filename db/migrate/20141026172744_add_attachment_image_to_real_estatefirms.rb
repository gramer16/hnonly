class AddAttachmentImageToRealEstatefirms < ActiveRecord::Migration
  def self.up
    change_table :real_estatefirms do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :real_estatefirms, :image
  end
end
