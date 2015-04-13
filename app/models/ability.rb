class Ability
  include CanCan::Ability

  def initialize(user)

    alias_action :create, :read, :update, :destroy, :to => :crud

    if user.admin_sys?
      can :crud, :all # 全ての機能
      can :access, :rails_admin
      can :dashboard
    elsif user.admin_biz?
      can :crud, :all # マスタメンテ（システム）以外の全ての機能
    elsif user.user_sys?
      can :read, :all
      can :access, :rails_admin
      can :dashboard
#      can :crud, []
    elsif user.user_biz?
      can :read, []
      can :crud, []
    elsif user.guest?
      can :crud, []
    end
  end
end
