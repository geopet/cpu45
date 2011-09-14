class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login, :null => false
      t.string :email, :null => false
      t.string :time_zone, :null => false
      t.string :first_name, :null => false
      t.string :middle_initial
      t.string :last_name, :null => false
      t.date :birthday
      t.string :sex
      t.boolean :admin

      t.timestamps
    end

    add_index :users, :login, :unique => true
  end
end
