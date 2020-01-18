class AddColumnToFlavors < ActiveRecord::Migration[5.2]
  def change
    add_column :flavors, :summit_price, :integer
    add_column :flavors, :purchase_price, :integer
  end
end
