class Photos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.attachment  :photo_file
      t.integer     :album_id
      t.foreign_key :albums, dependent: :delete

      t.timestamps
    end
  end
end
