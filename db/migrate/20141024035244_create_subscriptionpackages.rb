class CreateSubscriptionpackages < ActiveRecord::Migration
  def change
    create_table :subscriptionpackages do |t|
      t.string :package_title
      t.string :package_name
      t.text :package_description
      t.string :price
      t.text :features_include

      t.timestamps
    end
  end
end
