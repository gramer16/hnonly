class AddAttachmentImageToCommercialpropertiesforsales < ActiveRecord::Migration
  def self.up
    change_table :commercialpropertiesforsales do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :commercialpropertiesforsales, :image
  end
end
