class Photo < ActiveRecord::Base
  attr_accessible :album_id, :photo_file
  belongs_to :album

  has_attached_file :photo_file, :styles => { :thumb => '100x100>' }
  validates_attachment_content_type :photo_file, :content_type => %w(image/jpeg image/jpg image/png)
end
