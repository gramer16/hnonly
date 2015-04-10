class FixStripeCustomerToken < ActiveRecord::Migration
  def change
  	rename_column :subscriptions, :stripe_customer_token, :stripe_card_token
  end
end
