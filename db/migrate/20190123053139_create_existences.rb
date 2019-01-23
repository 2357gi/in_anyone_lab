class CreateExistences < ActiveRecord::Migration[5.2]
  def change
    create_table :existences do |t|
      t.string :name, null: false, presence: true, unique: true
      t.boolean :status, default: false, null: false
      t.datetime :enter_time
      t.datetime :exit_time
      t.integer :total, default: 0

      t.timestamps
    end
  end
end
