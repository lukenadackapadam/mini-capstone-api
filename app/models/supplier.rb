class Supplier < ApplicationRecord
  validates :name, :email, :phone_number, presence: true

  def products
    Product.where(supplier_id: id)
  end
end
