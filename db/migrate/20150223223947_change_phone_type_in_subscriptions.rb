class ChangePhoneTypeInSubscriptions < ActiveRecord::Migration
  def self.up
    change_column :subscriptions, :phone, :string
  end
 
  def self.down
    change_column :subscriptions, :phone, :integer
  end
end
