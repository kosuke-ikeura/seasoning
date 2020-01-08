class AddColumnTitlesToFlavors < ActiveRecord::Migration[5.2]
  def change
    add_column :flavors, :birthday, :datetime
  end
end
