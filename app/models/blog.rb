class Blog < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable

  attr_accessible :title, :description, :user_id, :comment_ids
end
