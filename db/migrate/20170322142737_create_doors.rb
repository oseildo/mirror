class CreateDoors < ActiveRecord::Migration
  def change
    create_table :doors do |t|
      t.string :type
      t.string :format

      t.timestamps null: false
    end
  end
end
