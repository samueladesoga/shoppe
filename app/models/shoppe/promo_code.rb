module Shoppe

  # The Shoppe::Promo model stores promo code for discount on orders
  class PromoCode < ActiveRecord::Base
  	before_create :generate_promo_code

    self.table_name = 'shoppe_promo_codes'
    has_many :orders, dependent: :restrict_with_exception, class_name: 'Shoppe::Order'
    scope :ordered, -> { order(name: :asc) }

    STATUS = ['New', 'Expired']

    private

    def generate_promo_code
    	self.promo_code = SecureRandom.hex(4)
  	end
  end
end
