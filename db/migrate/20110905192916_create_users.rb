class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :email
      t.string :time_zone
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.date :birthday
      t.string :sex
      t.boolean :admin

      t.timestamps
    end
  end
end
