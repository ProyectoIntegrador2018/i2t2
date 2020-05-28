# frozen_string_literal: true

# Define user permissions according to their role.
class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here.
    user ||= User.new # guest user (not logged in)
    if user.superadmin?
      can :manage, :all
    elsif user.moderador?
        can :create, User, role: "moderador"
        # cannot :create, Center  # Cannot create a new Center.
    elsif user.admin_centro_inv?
        can :create, Center  # Can create a new Center.
        can :manage, Center, user_id: user.id # Can only edit their own Centers.
        can :manage, User, id: user.id # Can only edit their own profile.
    elsif user.investigador?
        can :create, Researcher  # Can create a Researcher.
        can :manage, Researcher, user_id: user.id # Can only edit their own Researcher.
        can :manage, User, id: user.id # Can only edit their own profile.
    end
    can :read, :all
    can :inicio, :all
    can :update, User, id: user.id
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
