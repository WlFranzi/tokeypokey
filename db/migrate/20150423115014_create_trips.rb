class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.string :continent
      t.string :country
      t.string :photo
      t.string :duration

      t.timestamps
    end
  end
end
