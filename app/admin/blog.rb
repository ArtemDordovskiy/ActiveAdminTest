ActiveAdmin.register Blog do
  controller do
    def show
      @blog = Blog.find(params[:id])
      @versions = @blog.versions
      @blog = @blog.versions[params[:version].to_i].reify if params[:version]
      show! #it seems to need this
    end
  end

  member_action :history do
    @blog = Blog.find(params[:id])
    @versions = @blog.versions
    render "layouts/history"
  end
  sidebar :versionate, :partial => "layouts/version", :only => :show

  form do |f|
    f.inputs "Blog" do
      f.input :title
      f.input :description, as: :ckeditor
      f.input :user
    end
    # Comment
    f.has_many :comments do |item|
      item.input :commentable, collection: (Blog.all + Article.all + Comment.all)
      item.input :description, as: :ckeditor
      item.input :user
    end

    f.actions
  end
end
