Image.create!([
  {url: "https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone/upgrade/iphone-upgrade-introbox-201609?wid=1344&hei=514&fmt=png-alpha&qlt=95&.v=1471992336372", product_id: 2},
  {url: "https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone/upgrade/iphone-upgrade-introbox-201609?wid=1344&hei=514&fmt=png-alpha&qlt=95&.v=1471992336372", product_id: 2}
])
Product.create!([
  {name: "Iphone", description: "The best phone ever made by Apple", price: 800, supplier_id: 1}
])
Supplier.create!([
  {name: "Apple Store", email: "apple@apple.com", phone: "0783746591"}
])
User.create!([
  {name: "", email: "arsene@arsene.com", password_digest: "$2a$10$M04y0iuGBKGP44ZutlyAyOeT4pvqlEBGsb3dkzHlgu5R4XPVdWBri"}
])
