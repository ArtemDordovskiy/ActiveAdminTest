ActiveAdmin.register Menu do
  config.sort_order = 'position_asc'

  # This action is called by javascript when you drag and drop a column
  # It iterates through the collection and sets the new position based on the
  # order that jQuery submitted them
  collection_action :sort, :method => :post do
    params[:menu].each_with_index do |id, index|
      Menu.update_all(['position=?', index+1], ['id=?', id])
    end
    render :nothing => true
  end
end
