class AddCityToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :city, :string
  end
end
