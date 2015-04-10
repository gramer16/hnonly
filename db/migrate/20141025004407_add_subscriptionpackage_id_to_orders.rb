class AddSubscriptionpackageIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :subscriptionpackage_id, :integer
  end
end
