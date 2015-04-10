class AddAttachmentImageToLawyers < ActiveRecord::Migration
  def self.up
    change_table :lawyers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :lawyers, :image
  end
end
