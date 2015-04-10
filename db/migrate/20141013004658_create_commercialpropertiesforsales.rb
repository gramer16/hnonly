class CreateCommercialpropertiesforsales < ActiveRecord::Migration
  def change
    create_table :commercialpropertiesforsales do |t|
      t.string :mls_number
      t.string :property_type
      t.string :action
      t.text :address
      t.integer :zipcode
      t.string :city
      t.decimal :price
      t.string :realestatecompany
      t.string :officephone
      t.string :companywebsite
      t.string :listingagent
      t.string :emailagent
      t.string :agentphone
      t.string :assetclass
      t.integer :totalbuildingSF
      t.integer :totalunits
      t.string :cap_rate
      t.integer :floorsnumber
      t.string :construction_type
      t.text :property_description
      t.integer :parking_total
      t.string :elevators
      t.integer :individual_suiteSQF
      t.integer :year_completed
      t.integer :lotsqft

      t.timestamps
    end
  end
end
