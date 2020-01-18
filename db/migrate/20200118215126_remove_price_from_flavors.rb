class RemovePriceFromFlavors < ActiveRecord::Migration[5.2]
  def change
    remove_column :flavors, :price, :integer
  end
end
