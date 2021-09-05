class ReplaceTopSkillsfromPositions < ActiveRecord::Migration[6.1]
  def change
		remove_column :positions, :top_skills
  end
end
