class AddColumnToUserId < ActiveRecord::Migration[5.2]
  def change
    add_column :flavors, :user_id, :integer
  end
end
