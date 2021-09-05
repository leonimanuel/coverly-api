class DeleteAllSkillsfromPositions < ActiveRecord::Migration[6.1]
  def change
  	remove_column :positions, :all_skills
  end
end
