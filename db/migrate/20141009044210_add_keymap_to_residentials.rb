class AddKeymapToResidentials < ActiveRecord::Migration
  def change
    add_column :residentials, :keymap, :string
  end
end
