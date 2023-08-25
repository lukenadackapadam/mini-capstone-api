Image.create!([
  { url: "https://m.media-amazon.com/images/I/61Fs2NAB7CL.__AC_SX300_SY300_QL70_FMwebp_.jpg" },
  { url: "https://m.media-amazon.com/images/I/41DrkX8taNL._AC_SX466_.jpg" },
  { url: "https://www.soundguys.com/wp-content/uploads/2022/03/audio-technica-ath-m50x-center-scaled.jpg" },
])

Supplier.create!([
  { name: "Amazon", email: "Amazon@amazon.com", phone_number: "1112223334" },
  { name: "Costco", email: "Costco@gmail.com", phone_number: "1112223456" },
])

product = Product.create(name: "Portable Charger", price: 50, image_id: 1, description: "Fast-charging and long-lasting portable charger.", supplier_id: 1)

product = Product.create(name: "Portable Speaker", price: 90, image_id: 2, description: "Enjoy music andywhere, with amazing quality.", supplier_id: 1)

product = Product.create(name: "Audio-Technica Headphones", price: 170, image_id: 3, description: "Amazing sounding headphones.", supplier_id: 2)
