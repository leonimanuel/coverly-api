class CreateCoverLetters < ActiveRecord::Migration[6.0]
  def change
    create_table :cover_letters do |t|
      t.string :title
      t.string :body
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
