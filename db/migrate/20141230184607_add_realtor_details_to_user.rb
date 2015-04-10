class AddRealtorDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :isRealtor, :boolean
    add_column :users, :licenseId, :string
  end
end
