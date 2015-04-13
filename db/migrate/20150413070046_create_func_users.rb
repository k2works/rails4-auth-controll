class CreateFuncUsers < ActiveRecord::Migration
  def change
    create_table :func_users do |t|

      t.timestamps
    end
  end
end
