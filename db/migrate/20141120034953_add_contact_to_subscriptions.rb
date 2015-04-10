class AddContactToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :contact, :string
  end
end
