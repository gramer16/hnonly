class AddPrice1ToSubscriptionpackage < ActiveRecord::Migration
  def change
    add_column :subscriptionpackages, :price1, :decimal
  end
end
