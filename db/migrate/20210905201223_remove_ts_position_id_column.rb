class RemoveTsPositionIdColumn < ActiveRecord::Migration[6.1]
  def change
  	remove_column :keywords_positions, :ts_position_id
  end
end
