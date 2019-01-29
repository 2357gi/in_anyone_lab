class CreateUserlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :userlogs do |t|
      t.string :name
      t.datetime :enter_time
      t.datetime :exit_time
      t.integer :stay_time, default: 0

      t.timestamps
    end
  end
end
