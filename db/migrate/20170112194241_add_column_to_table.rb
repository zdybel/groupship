class AddColumnToTable < ActiveRecord::Migration[5.0]
  def change
  	add_column :jobs, :available, :boolean
  	add_column :boats, :available, :boolean
  end
end
