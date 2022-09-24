class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :make_and_model
      t.string :color
      t.integer :mileage
      t.integer :price
      t.integer :year
      t.integer :dealership_id
    end
  end
end
