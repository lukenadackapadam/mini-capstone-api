class Image < ApplicationRecord
  validates :url, presence: true

  def products
    Product.where(image_id: id)
  end
end
