class Album < ActiveRecord::Base
  attr_accessible :title, :user_id
  belongs_to :user
  has_many :photos

  accepts_nested_attributes_for :photos, :allow_destroy => true
  attr_accessible :photos_attributes, :photo_ids
end
