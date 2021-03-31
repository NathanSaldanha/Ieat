class Restaurante < ApplicationRecord
  has_many :products
  belongs_to :user

  def total_producto
    products.count
  end
end
