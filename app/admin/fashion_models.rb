ActiveAdmin.register FashionModel do
  permit_params :name, :height, :bust, :waist, :hip, :gender, :agency, images_attributes: [:id, :image, :reference, :_destroy]

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

 

#formのコード
  form do |f|
    f.inputs 'モデル情報' do
      f.input :name
      f.input :height
      f.input :bust
      f.input :waist
      f.input :hip
      f.input :gender
      f.input :agency_id
      f.has_many :images, allow_destroy: true,
        new_record: true do |t|
        t.input :image
      end
      f.actions
    end
  end
 
  
 
end
