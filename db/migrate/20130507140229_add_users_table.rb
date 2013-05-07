class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :team_id
      
      t.timestamps
    end
  end
end
