class FuncAdminController < ApplicationController
  def index
    @func_admin = FuncAdmin.all
  end
end
