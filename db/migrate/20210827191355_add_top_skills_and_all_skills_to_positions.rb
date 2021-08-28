class AddTopSkillsAndAllSkillsToPositions < ActiveRecord::Migration[6.1]
  def change
  	add_column :positions, :top_skills, :text, array:true, default: []
  	add_column :positions, :all_skills, :text, array:true, default: []
  end
end
