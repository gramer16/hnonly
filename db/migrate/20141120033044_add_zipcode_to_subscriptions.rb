class AddZipcodeToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :zipcode, :integer
  end
end
