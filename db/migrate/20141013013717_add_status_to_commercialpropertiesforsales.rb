class AddStatusToCommercialpropertiesforsales < ActiveRecord::Migration
  def change
    add_column :commercialpropertiesforsales, :status, :string
  end
end
