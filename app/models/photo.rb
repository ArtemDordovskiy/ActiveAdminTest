class Photo < ActiveRecord::Base
  attr_accessible :caption, :album_id, :file
  belongs_to :album

  has_attached_file :file, :styles => { :detailed => "1920x1920>", :thumb => "100x100>" }
  validates_attachment_content_type :file, :content_type => %w(image/jpeg image/jpg image/png)
end
