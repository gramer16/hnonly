class AddSelleridToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :sellerid, :string
  end
end
