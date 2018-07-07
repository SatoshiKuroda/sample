ActiveAdmin.register FashionModelAndImage do

  permit_params :name, :height, :bust, :waist, :hip, :gender, :agency_id, images_attributes:[:image]

  
# index as: :grid do |fashion_model_and_image|
#   link_to image_tag(fashion_model_and_image.image_id)
# end
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
  index do
    render partial: 'active_admin/test.html'
  end
end
