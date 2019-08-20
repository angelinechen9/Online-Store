class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :order, optional: true

  def item_total_price
    product.price * quantity
  end
end
