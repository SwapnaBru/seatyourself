class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.datetime :date_time
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps
    end
  end
end
