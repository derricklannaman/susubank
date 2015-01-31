class CreateDashboards < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
      t.integer :susu_user_id

      t.timestamps
    end
  end
end
