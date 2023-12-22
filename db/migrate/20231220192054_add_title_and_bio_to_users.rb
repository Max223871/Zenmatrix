class AddTitleAndBioToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :title, :string
    add_column :users, :bio, :text
  end
end
