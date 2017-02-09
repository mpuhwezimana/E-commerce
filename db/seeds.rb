CartedProduct.create!([
  {product_id: 2, order_id: 1, quantity: nil},
  {product_id: 2, order_id: 11, quantity: nil},
  {product_id: 2, order_id: 11, quantity: 5},
  {product_id: 2, order_id: 11, quantity: 2},
  {product_id: 3, order_id: 11, quantity: 4},
  {product_id: 2, order_id: 12, quantity: 3},
  {product_id: 2, order_id: 13, quantity: 2},
  {product_id: 3, order_id: 11, quantity: 6},
  {product_id: 2, order_id: 11, quantity: 3},
  {product_id: 4, order_id: 14, quantity: 2}
])
Image.create!([
  {url: "https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone/upgrade/iphone-upgrade-introbox-201609?wid=1344&hei=514&fmt=png-alpha&qlt=95&.v=1471992336372", product_id: 2},
  {url: "https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone/upgrade/iphone-upgrade-introbox-201609?wid=1344&hei=514&fmt=png-alpha&qlt=95&.v=1471992336372", product_id: 2},
  {url: "http://www.apple.com/macbook-air/images/overview_hero.jpg", product_id: 3},
  {url: "http://glemdrago.com.br/wp-content/uploads/2016/03/notebook_apple_macbook_air_md760_intel_core_i5_13ghz_memoria_4gb_ssd_128gb_133_20363_550x550.png", product_id: 3},
  {url: "https://cdn0.vox-cdn.com/thumbor/50fpus1awanxOoA5bH4aHm677qE=/0x0:2039x1359/1280x854/cdn0.vox-cdn.com/uploads/chorus_image/image/47633323/theonetrueipad1_2040.0.0.jpg", product_id: 4},
  {url: "http://core0.staticworld.net/images/article/2015/11/ipad-pro-gaming-100628676-orig.jpg", product_id: 4}
])
Order.create!([
  {user_id: 1, subtotal: 3200, tax: 288, total: 3488, completed: nil, product_id: 2, quantity: nil},
  {user_id: 1, subtotal: 3200, tax: 288, total: 3488, completed: nil, product_id: 2, quantity: nil},
  {user_id: 1, subtotal: 4800, tax: 432, total: 5232, completed: nil, product_id: 2, quantity: nil},
  {user_id: 1, subtotal: 4800, tax: 432, total: 5232, completed: nil, product_id: 2, quantity: nil},
  {user_id: 1, subtotal: 4800, tax: 432, total: 5232, completed: nil, product_id: 2, quantity: nil},
  {user_id: 1, subtotal: 3200, tax: 288, total: 3488, completed: nil, product_id: 2, quantity: nil},
  {user_id: 1, subtotal: 1600, tax: 144, total: 1744, completed: nil, product_id: 2, quantity: nil},
  {user_id: 1, subtotal: 2400, tax: 216, total: 2616, completed: nil, product_id: 2, quantity: nil},
  {user_id: 1, subtotal: 2400, tax: 216, total: 2616, completed: nil, product_id: 2, quantity: nil},
  {user_id: 1, subtotal: 2400, tax: 216, total: 2616, completed: nil, product_id: 2, quantity: 3},
  {user_id: 1, subtotal: nil, tax: nil, total: nil, completed: false, product_id: nil, quantity: nil},
  {user_id: 2, subtotal: nil, tax: nil, total: nil, completed: false, product_id: nil, quantity: nil},
  {user_id: 3, subtotal: nil, tax: nil, total: nil, completed: false, product_id: nil, quantity: nil},
  {user_id: 4, subtotal: nil, tax: nil, total: nil, completed: false, product_id: nil, quantity: nil}
])
Product.create!([
  {name: "Iphone", description: "The best phone ever made by Apple", price: 800, supplier_id: 1},
  {name: "Macbook Air", description: "The best computer for programmers", price: 1500, supplier_id: 2},
  {name: "Ipad Pro", description: "The best tablet in the world. ", price: 600, supplier_id: nil}
])
Supplier.create!([
  {name: "Apple Store", email: "apple@apple.com", phone: "0783746591"},
  {name: "Apple USA", email: "appleusa@apple.com", phone: "07836547292"}
])
User.create!([
  {name: "", email: "arsene@arsene.com", password_digest: "$2a$10$M04y0iuGBKGP44ZutlyAyOeT4pvqlEBGsb3dkzHlgu5R4XPVdWBri"},
  {name: "Isabelle Mutesi", email: "isabelle@arsene.ar", password_digest: "$2a$10$yUpEk9NnINs4gfZRksgnve9u9zdFYT110D13iS9P23VmE0qzJPDmm"},
  {name: "Akaranga", email: "akaranga@arsene.ar", password_digest: "$2a$10$tAvJ4dVx2xZ.PS6QLA12gOpz36Mvl1uAebm6NO/8o7C1H0tGlaWJm"},
  {name: "Regine Muramutse", email: "regine@arsene.ar", password_digest: "$2a$10$MT663SOh8dftJjz6v0YD2OnICQhfB4pNQ7lEVSECjTi.H9YQVcHze"},
  {name: "ew", email: "ew@gmail.com", password_digest: "$2a$10$nak8/iKd9UYG.PBfCShHtO2of3oAGGOXwEWwJ0awwvlRhLmkWSTDe"}
])
