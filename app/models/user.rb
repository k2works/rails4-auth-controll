class User < ActiveRecord::Base
  # Include default users modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: {admin_sys: 'admin_sys', admin_biz: 'admin_biz', user_sys: 'user_sys', user_biz: 'user_biz', guest: 'guest'}
end
