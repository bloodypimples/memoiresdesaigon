ActiveAdmin.register GalleryImage do

  permit_params :gallery_id, :image

  index do
    selectable_column
    id_column
    column :gallery
    actions
  end

  form title: 'New image' do |f|
    input :gallery
    input :image
    actions
  end

  action_item :new, only: :show do
    link_to 'New Image', new_admin_gallery_image_path
  end
end
