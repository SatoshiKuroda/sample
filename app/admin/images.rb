ActiveAdmin.register Image do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
#indexページ
index as: :grid do |image|
  link_to image_tag(image.image_url), admin_image_path(image)
end

index do
  id_column
  column :image do |b|
    image_tag(b.image.url(:thumb))
  end
    actions
end

  # index do
  #   selectable_column
  #   id_column
  #   column :image do |b|
  #     image_tag(b.image.url(:thumb))
  #   end
  #   column :fashion_model_id

  #   actions
  # end
 
  #showページ
  show do
    attributes_table do
      row :image do |b|
        image_tag(b.image.url)
      end
      row :created_at
      row :updated_at
    end
  end
 
  permit_params :image, :fashion_model_id

end
