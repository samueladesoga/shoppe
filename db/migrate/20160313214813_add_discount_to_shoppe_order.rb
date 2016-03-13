class AddDiscountToShoppeOrder < ActiveRecord::Migration
  def change
    add_column :shoppe_orders, :discount, :decimal, :default => 0.0
  end
end
