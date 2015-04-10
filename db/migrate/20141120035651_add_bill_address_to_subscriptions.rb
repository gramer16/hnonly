class AddBillAddressToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :bill_address, :text
  end
end
