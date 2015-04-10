class ChangeZipcodeTypeInRealtors < ActiveRecord::Migration
  def self.up
    change_column :realtors, :zipcode, :string
  end
 
  def self.down
    change_column :realtors, :zipcode, :integer
  end
end
