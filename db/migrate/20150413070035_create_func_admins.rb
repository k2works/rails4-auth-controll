class CreateFuncAdmins < ActiveRecord::Migration
  def change
    create_table :func_admins do |t|

      t.timestamps
    end
  end
end
