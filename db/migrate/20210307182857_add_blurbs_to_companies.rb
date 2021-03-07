class AddBlurbsToCompanies < ActiveRecord::Migration[6.0]
  def change
  	add_column :companies, :blurb, :text
  	add_column :companies, :link, :string
  end
end
