class Blog < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable

  attr_accessible :title, :description, :user_id
  accepts_nested_attributes_for :comments
end
