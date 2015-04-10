class CreateResidentials < ActiveRecord::Migration
  def change
    create_table :residentials do |t|
      t.string :mls_number
      t.string :action
      t.text :address
      t.string :property_type
      t.integer :bedrooms
      t.integer :full_bathrooms
      t.integer :half_bathrooms
      t.integer :square_feet
      t.decimal :price
      t.integer :zip_code
      t.integer :lot_size
      t.integer :garage
      t.string :construction_type
      t.integer :stories
      t.integer :year_built
      t.string :private_pool
      t.string :area_tennis
      t.string :wheelchair
      t.string :elevator
      t.string :patio_deck
      t.string :energy_features
      t.string :green_certification
      t.string :golf_course
      t.string :water_view
      t.string :water_front
      t.string :foreclosure
      t.string :status
      t.string :city
      t.string :florida_mlsarea

      t.timestamps
    end
  end
end
