class RemoveIndustryColumnFromKeywords < ActiveRecord::Migration[6.1]
  def change
  	remove_column :keywords, :industry_id
  end
end
