class AddFloridareaToCommercialpropertiesforsales < ActiveRecord::Migration
  def change
    add_column :commercialpropertiesforsales, :floridarea, :string
  end
end
