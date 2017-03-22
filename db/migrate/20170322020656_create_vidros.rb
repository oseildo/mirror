class CreateVidros < ActiveRecord::Migration
  def change
    create_table :vidros do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
