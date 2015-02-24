class AddAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string  :title
      t.integer :user_id
      t.foreign_key :users, dependent: :delete

      t.timestamps
    end
  end
end
