class AddIndustrIdToKeywords < ActiveRecord::Migration[6.1]
  def change
		add_column :keywords, :industry_id, :integer, references: :industries
  end
end
