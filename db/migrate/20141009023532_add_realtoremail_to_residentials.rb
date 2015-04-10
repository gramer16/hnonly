class AddRealtoremailToResidentials < ActiveRecord::Migration
  def change
    add_column :residentials, :realtoremail, :string
  end
end
