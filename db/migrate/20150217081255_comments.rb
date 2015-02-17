class Comments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :description
      t.integer :commentable_id
      t.string  :commentable_type
      t.integer :user_id
      t.foreign_key :users, dependent: :delete

      t.timestamps
    end
  end
end
