class AddPublicColumnToKeywords < ActiveRecord::Migration[6.1]
  def change
  	add_column :keywords, :public, :bool, default: true
  end
end
