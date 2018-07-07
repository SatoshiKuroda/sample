class AdminUser < ApplicationRecord
  has_many :admin_role_assigns
  has_many :admin_roles, :through => :admin_role_assigns
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  #enum role: {member: 0,agency: 1,dh_staff: 2,admin: 3,super_admin: 99}
  def has_role?(admin_role_sym)
    admin_roles.any? { |r| r.name.underscore.downcase.to_sym == admin_role_sym }
  end
end
