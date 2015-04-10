class AddAdditionalfeaturesToResidentials < ActiveRecord::Migration
  def change
    add_column :residentials, :additionalfeatures, :text
  end
end
