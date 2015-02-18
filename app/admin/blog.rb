ActiveAdmin.register Blog do
  form do |f|
    f.inputs "Blog" do
      f.input :title
      f.input :description
      f.input :user
    end
    # Comment
    f.has_many :comments do |item|
      item.input :commentable, collection: (Blog.all + Article.all + Comment.all)
      item.input :description
      item.input :user
    end

    f.actions
  end
end
