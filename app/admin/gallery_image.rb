ActiveAdmin.register GalleryImage, as: "Image" do

  permit_params :gallery_id, :image

  show do
    attributes_table do
     row :created_at
     row :updated_at
     row :image do |ad|
       image_tag ad.image.url
     end
     row :gallery_id
   end
 end

  index do
    selectable_column
    column :image do |ad|
      link_to image_tag(ad.image.url(:thumb)), admin_image_path(ad)
    end
    column :gallery
    actions
  end

  form title: 'New image' do |f|
    input :gallery
    input :image
    actions
  end

  action_item :new, only: :show do
    link_to 'New Image', new_admin_image_path
  end
end
