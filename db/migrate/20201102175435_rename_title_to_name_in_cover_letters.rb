class RenameTitleToNameInCoverLetters < ActiveRecord::Migration[6.0]
  def change
  	rename_column :cover_letters, :title, :name
  end
end
