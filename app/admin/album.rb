ActiveAdmin.register Album do
  form do |f|
    f.inputs "Album" do
      f.input :title
      f.input :user
    end
    f.actions
  end
end
