class Product < ApplicationRecord
  validates :name, :price, :description, presence: true

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def image
    Image.find_by(id: image_id)
  end

  def is_discounted?
    price <= 10
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    price + tax
  end
end
