class ChangeBoatsType < ActiveRecord::Migration[5.1]
  def change
  	change_column :boats, :max_cont, :string
  	change_column :boats, :cost, :string
  end
end
