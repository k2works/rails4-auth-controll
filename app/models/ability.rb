class Ability
  include CanCan::Ability

  def initialize(user)

    alias_action :create, :read, :update, :destroy, :to => :crud

    if user.admin_sys?
      # 全ての機能
      can :crud, :all
      can :access, :rails_admin
      can :dashboard
    elsif user.admin_biz?
      # マスタメンテ（システム）以外の全ての機能
      can :crud, :all
    elsif user.user_sys?
      # マスタメンテ（業務）と管理ユーザ用以外の機能
      can :read, :all
      can :crud, [FuncUser,FuncGuest]
      can :access, :rails_admin
      can :dashboard
    elsif user.user_biz?
      # マスタメンテ（システム）マスタメンテ（業務）と管理ユーザ用以外の機能
      can :read, :all
      can :crud, [FuncUser,FuncGuest]
    elsif user.guest?
      # ゲストユーザ用機能だけ
      can :crud, [FuncGuest]
    end
  end
end
