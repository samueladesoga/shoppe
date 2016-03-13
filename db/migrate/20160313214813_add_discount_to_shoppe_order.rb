class AddDiscountToShoppeOrder < ActiveRecord::Migration
  def change
    add_column :shoppe_orders, :discount, :decimal
  end
end
