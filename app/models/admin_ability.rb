# in models/admin_ability.rb
class AdminAbility
  include CanCan::Ability
  def initialize(user)
    return unless user && user.admin? || user.superadmin?
    can :access, :rails_admin
    can :read, :dashboard
    can :read, :all
    if user.superadmin?
      can :manage, :all
    end
  end
end