class AddRealtorlicenseToResidentials < ActiveRecord::Migration
  def change
    add_column :residentials, :realorlicense, :string
  end
end
