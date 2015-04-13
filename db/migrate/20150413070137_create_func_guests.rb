class CreateFuncGuests < ActiveRecord::Migration
  def change
    create_table :func_guests do |t|

      t.timestamps
    end
  end
end
