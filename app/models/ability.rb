class Ability
  include CanCan::Ability

  def initialize(user)
    case user.role
      when user.admin_sys?
        can :crud, :all # 全ての機能
      when user.admin_biz?
        can :crud, :all # マスタメンテ（システム）以外の全ての機能
      when user.user_sys?
        can :read, []
        can :crud, []
      when user.user_biz?
        can :read, []
        can :crud, []
      when user.guest?
        can :crud, []
    end
  end
end
