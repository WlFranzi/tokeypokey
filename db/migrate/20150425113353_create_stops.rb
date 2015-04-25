class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.string :name
      t.string :description
      t.string :photo
      t.integer :coordinates
      t.integer :position

      t.timestamps
    end
  end
end
