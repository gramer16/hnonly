class AddAttachmentImageToLandsurveyors < ActiveRecord::Migration
  def self.up
    change_table :landsurveyors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :landsurveyors, :image
  end
end
