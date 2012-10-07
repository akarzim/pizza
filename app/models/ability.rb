# encoding: utf-8
class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    unless user.new_record?
      can :manage, :all
    end
  end
end
