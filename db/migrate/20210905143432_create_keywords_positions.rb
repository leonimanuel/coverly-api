class CreateKeywordsPositions < ActiveRecord::Migration[6.1]
  def change
    create_table :keywords_positions do |t|
      t.references :keyword
      t.references :position

      t.timestamps
    end
  end
end
