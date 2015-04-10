class AddMaintenancefeeToResidentials < ActiveRecord::Migration
  def change
    add_column :residentials, :maintenancefee, :string
  end
end
