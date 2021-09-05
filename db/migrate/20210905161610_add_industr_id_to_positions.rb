class AddIndustrIdToPositions < ActiveRecord::Migration[6.1]
  def change
  	add_column :positions, :industry_id, :integer, references: :industries
  end
end
