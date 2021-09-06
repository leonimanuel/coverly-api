class CreateTopSkillsPositions < ActiveRecord::Migration[6.1]
  def change
    create_table :top_skills_positions do |t|
      t.references :keyword, null: false, foreign_key: true
      t.references :position, null: false, foreign_key: true

      t.timestamps
    end
  end
end
