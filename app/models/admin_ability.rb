# app/models/admin_ability.rb

# All back end users (i.e. Active Admin users) are authorized using this class
class AdminAbility
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    # We operate with three role levels:
    #  - Editor
    #  - Moderator
    #  - Manager

    # An editor can do the following:
    #################################

    can :manage, Blog
    can :read, Administrator

    # A administrator can do the following:
    if user.role?('administrator')
      can :manage, Blog
    end

    # A manager can do the following:
    if user.role?('manager')
      can :manage, Comment
    end
  end
end
