class AddNameElementsToSusuUsers < ActiveRecord::Migration
  def change
    add_column :susu_users, :first_name, :string
    add_column :susu_users, :last_name, :string
  end
end
