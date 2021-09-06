class CreateKeywordsCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :keywords_companies do |t|
      t.references :keyword, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
