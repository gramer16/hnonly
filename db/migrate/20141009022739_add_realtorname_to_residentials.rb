class AddRealtornameToResidentials < ActiveRecord::Migration
  def change
    add_column :residentials, :realtorname, :string
  end
end
