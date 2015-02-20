class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  # attr_accessible :title, :body

  # The order of the ROLES array is important!
  # All privileges are inherited from left to right
  ROLES = %w(member administrator manager)

  # Privileges are inherited between roles in the order specified in the ROLES
  # array. E.g. A moderator can do the same as an editor + more.
  #
  # This method understands that and will therefore return true for moderator
  # users even if you call `role?('editor')`.
  def role?(base_role)
    return false unless role # A user have a role attribute. If not set, the user does not have any roles.
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end
end
