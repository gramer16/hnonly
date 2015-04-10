class AddAddressToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :address, :text
  end
end
