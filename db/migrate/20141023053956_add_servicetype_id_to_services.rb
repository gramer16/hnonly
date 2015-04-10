class AddServicetypeIdToServices < ActiveRecord::Migration
  def change
    add_column :services, :servicetype_id, :integer
  end
end
