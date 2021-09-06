class MakeLowerCaseKeywordsUnique < ActiveRecord::Migration[6.1]
  def change
  	add_index :keywords, [:lower_case], :unique => true
  end
end
