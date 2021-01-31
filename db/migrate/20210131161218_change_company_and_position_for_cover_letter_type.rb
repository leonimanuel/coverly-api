class ChangeCompanyAndPositionForCoverLetterType < ActiveRecord::Migration[6.0]
  def change
		change_column :cover_letters, :company, :string  	
		change_column :cover_letters, :position, :string  	
  end
end
