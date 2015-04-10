class AddUserIdToResidentials < ActiveRecord::Migration
  def change
    add_column :residentials, :user_id, :integer
  end
end
