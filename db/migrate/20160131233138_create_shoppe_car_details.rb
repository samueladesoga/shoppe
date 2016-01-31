class CreateShoppeCarDetails < ActiveRecord::Migration
  def change
    create_table :shoppe_car_details do |t|
      t.belongs_to :customer, index: true
      t.string :make
      t.string :model
      t.string :year_of_manufacture
      t.string :mileage
      t.string :fuel

      t.timestamps
    end
  end
end
