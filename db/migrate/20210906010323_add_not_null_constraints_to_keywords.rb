class AddNotNullConstraintsToKeywords < ActiveRecord::Migration[6.1]
  def change
  	change_column_null :keywords, :name, false
  	change_column_null :keywords, :lower_case, false
  	change_column_null :keywords, :industry_id, false
  end
end
