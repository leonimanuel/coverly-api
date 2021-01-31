class AddCompanyAndPositionToCoverLetter < ActiveRecord::Migration[6.0]
  def change
  	add_column :cover_letters, :company, :text
  	add_column :cover_letters, :position, :text
  end
end
