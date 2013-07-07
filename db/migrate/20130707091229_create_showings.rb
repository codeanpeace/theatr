class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|
      t.date :showing_date
      t.time :showing_time
      t.references :location
      t.references :movie

      t.timestamps
    end
    add_index :showings, :location_id
    add_index :showings, :movie_id
  end
end
