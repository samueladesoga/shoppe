module Shoppe
  class CarDetail < ActiveRecord::Base

    # Set the table name
    self.table_name = "shoppe_car_details"

    # The customer which this car details should be linked to
    #
    # @return [Shoppe::Customer]
    belongs_to :customer, class_name: "Shoppe::Customer"

  end
end