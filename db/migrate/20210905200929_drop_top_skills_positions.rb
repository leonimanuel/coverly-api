class DropTopSkillsPositions < ActiveRecord::Migration[6.1]
  def change
  	drop_table :top_skills_positions
  end
end
