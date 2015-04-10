class AddCompanyNameToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :company_name, :string
  end
end
