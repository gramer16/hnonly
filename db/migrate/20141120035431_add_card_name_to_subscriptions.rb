class AddCardNameToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :card_name, :string
  end
end
