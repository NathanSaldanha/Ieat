class Restaurante < ApplicationRecord
  has_many :products

  validates :name, presence: true
  def total_producto
    products.count
  end
end
