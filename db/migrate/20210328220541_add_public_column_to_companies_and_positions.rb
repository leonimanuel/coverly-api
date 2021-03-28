class AddPublicColumnToCompaniesAndPositions < ActiveRecord::Migration[6.0]
  def change
  	add_column :companies, :public, :boolean, default: false
  	add_column :positions, :public, :boolean, default: false
  end
end
