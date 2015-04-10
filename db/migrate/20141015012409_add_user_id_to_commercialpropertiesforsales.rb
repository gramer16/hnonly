class AddUserIdToCommercialpropertiesforsales < ActiveRecord::Migration
  def change
    add_column :commercialpropertiesforsales, :user_id, :integer
  end
end
