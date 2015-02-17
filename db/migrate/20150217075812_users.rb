class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :email
      t.string :crypt
      t.string :salt

      t.timestamps
    end
  end
end
