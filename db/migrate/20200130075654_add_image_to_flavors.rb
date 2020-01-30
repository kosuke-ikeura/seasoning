class AddImageToFlavors < ActiveRecord::Migration[5.2]
  def change
    add_column :flavors, :image, :string
  end
end
