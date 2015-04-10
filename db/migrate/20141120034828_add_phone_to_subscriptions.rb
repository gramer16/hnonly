class AddPhoneToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :phone, :integer
  end
end
