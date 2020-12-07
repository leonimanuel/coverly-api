class AddKeywordsToPosition < ActiveRecord::Migration[6.0]
  def change
    add_column :positions, :keywords, :text, array:true, default: []
  end
end
