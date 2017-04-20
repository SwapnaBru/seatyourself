class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.integer :time_open
      t.integer :time_close
      t.string :name
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :image
      t.integer :user_id
      t.integer :cuisine_id
      t.integer :capacity
      t.integer :price_range

      t.timestamps
    end
  end
end
