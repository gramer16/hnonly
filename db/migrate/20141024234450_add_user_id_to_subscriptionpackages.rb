class AddUserIdToSubscriptionpackages < ActiveRecord::Migration
  def change
    add_column :subscriptionpackages, :user_id, :integer
  end
end
