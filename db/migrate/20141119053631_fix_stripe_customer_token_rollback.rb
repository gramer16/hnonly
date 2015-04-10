class FixStripeCustomerTokenRollback < ActiveRecord::Migration
  def change
  	rename_column :subscriptions, :stripe_card_token, :stripe_customer_token
  end
end
