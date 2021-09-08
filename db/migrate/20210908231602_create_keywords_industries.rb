class CreateKeywordsIndustries < ActiveRecord::Migration[6.1]
  def change
    create_table :keywords_industries do |t|
      t.references :keyword, null: false, foreign_key: true
      t.references :industry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
