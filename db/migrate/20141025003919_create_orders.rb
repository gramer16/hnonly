class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.text :street_address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :phone_number
      t.string :email
      t.string :company_service

      t.timestamps
    end
  end
end
