class AddRealtorphonenumberToResidentials < ActiveRecord::Migration
  def change
    add_column :residentials, :realtorphonenumber, :integer
  end
end
