ActiveAdmin.register Album do
  form do |f|
    f.inputs "Album" do
      f.input :title
      f.input :user
    end

    f.has_many :photos do |photo_f|
      photo_f.input :photo_file, as: :file
    end
    f.actions
  end
end
