class Blog < ActiveRecord::Base
  include Rails.application.routes.url_helpers
  has_paper_trail

  belongs_to :user
  has_many :comments, as: :commentable

  attr_accessible :title, :description, :user_id
  accepts_nested_attributes_for :comments

  def admin_permalink
    admin_blog_path(self)
  end
end
