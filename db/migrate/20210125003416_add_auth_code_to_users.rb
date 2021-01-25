class AddAuthCodeToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :auth_code, :text
  end
end
