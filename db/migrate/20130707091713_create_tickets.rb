class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :row
      t.string :seat
      t.string :type
      t.integer :price
      t.references :showing
      t.integer :movie_id

      t.timestamps
    end
    add_index :tickets, :showing_id
  end
end
