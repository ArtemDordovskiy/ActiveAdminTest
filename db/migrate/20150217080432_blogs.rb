class Blogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text   :description
      t.integer :user_id
      t.foreign_key :users, dependent: :delete

      t.timestamps
    end
  end
end
