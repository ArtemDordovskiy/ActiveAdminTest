ActiveAdmin.register Photo do
  index do
    column "photo_file" do |image|
      image_tag image.photo_file.url(:thumb)
    end
    column :album
    default_actions
  end

  form do |f|
    f.inputs 'Photo', :multipart => true do
      f.input :photo_file, :as => :file
      f.input :album, collection: Album.all
    end

    f.actions
  end
end
