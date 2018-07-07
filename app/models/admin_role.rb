class AdminRole < ApplicationRecord
  attr_accessible :name

  has_many :admin_role_assigns
  has_many :admin_users, :through => :admin_role_assigns
end
