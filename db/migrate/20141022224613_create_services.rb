class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :company_name
      t.string :service_type
      t.text :company_description
      t.text :address
      t.string :city
      t.integer :zipcode
      t.string :contact_name
      t.string :company_website
      t.string :company_phone

      t.timestamps
    end
  end
end
