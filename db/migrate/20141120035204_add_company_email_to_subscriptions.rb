class AddCompanyEmailToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :company_email, :string
  end
end
