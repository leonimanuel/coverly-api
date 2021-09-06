class AddLowerCaseToKeywords < ActiveRecord::Migration[6.1]
  def change
  	add_column :keywords, :lower_case, :string
  end
end
