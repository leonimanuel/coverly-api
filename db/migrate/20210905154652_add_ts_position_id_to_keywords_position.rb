class AddTsPositionIdToKeywordsPosition < ActiveRecord::Migration[6.1]
  def change
  	add_column :keywords_positions, :ts_position_id, :integer, references: :positions
  end
end
