class Comment < ActiveRecord::Base
  has_paper_trail
  belongs_to :user
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable

  attr_accessible :description, :commentable_id, :commentable_type, :user_id, :comment_ids
end
