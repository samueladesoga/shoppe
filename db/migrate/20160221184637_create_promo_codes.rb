class CreatePromoCodes < ActiveRecord::Migration
  def change
    create_table :shoppe_promo_codes do |t|
      t.string        :name
      t.string        :promo_code
      t.decimal       :percentage_discount, :default => 0
      t.date          :expired_date
      t.string        :status
      t.timestamps
    end
  end
end
