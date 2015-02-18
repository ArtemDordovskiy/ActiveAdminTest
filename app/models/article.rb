class Article < ActiveRecord::Base
  has_paper_trail
  has_many :comments, as: :commentable

  attr_accessible :title, :description, :comment_ids
end
