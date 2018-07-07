class AdminRoleAssign < ApplicationRecord  
  attr_accessible :admin_role_id, :admin_user_id

  belongs_to :admin_user
  belongs_to :admin_role
end
