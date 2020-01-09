class RemoveColumnFromFlavors < ActiveRecord::Migration[5.2]
  def change
    remove_column :flavors, :birthday, :datetime
  end
end
