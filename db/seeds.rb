User.create!([
  {name: "Jack", email: "jack@gmail.com", password_digest: "$2a$12$P2kLrdq66q0riR.yQIQC6.e/nPJ8s9ypqOg5lruSc6Xn6HBupr1fS", admin: false},
  {name: "Mary", email: "mary@gmail.com", password_digest: "$2a$12$J1TYjgYEMMZ5Tz70fYdqWuQZJcsBwK7etpYLgcb1dpvn8i8dFVX.a", admin: false},
  {name: "Bob", email: "bob@gmail.com", password_digest: "$2a$12$kb48luK4zecA.yqfqHU53eXxsBX5QtY5KNBe/qzTLJSlCIpfmHvJG", admin: false},
  {name: "Bill", email: "bill@gmail.com", password_digest: "$2a$12$jADmRYUxBMxO3GqYLvMzKeE0ZFTB58Zgb9APDsbRI9ZtHp7oPHoGC", admin: false},
  {name: "Jean", email: "jean@gmail.com", password_digest: "$2a$12$gQHoCKp7byR44EeGhcQTS.pMwnEavX1GUppmTn9d4s5nq1SVbAXtK", admin: false},
  {name: "Sue", email: "sue@gmail.com", password_digest: "$2a$12$sJwrPYNmzlgqYkImbq1he.JbITX2HeGDt5u8iyLUIUHL3T1nm7JTe", admin: false},
  {name: "Erik", email: "ea@gmail.com", password_digest: "$2a$12$fYgQKjo4IxK5pLytiEGzm.fZU2l2cR4pjeiRHDWo1BoW/gh6FwAmW", admin: true}
])

Supplier.create!([
  {name: "Happy Plants", email: "hp@gmail.com", phone_number: "333-4444"},
  {name: "Home Depot", email: "homedepot@gmail.com", phone_number: "333-6767"},
  {name: "Lowe's", email: "lowes@gmail.com", phone_number: "987-9876"}
])

Product.create!([
  {name: "red bell pepper seeds", price: "5.0", description: "30 seeds; heirloom.", in_stock: true, supplier_id: 1},
  {name: "tomato seeds", price: "2.0", description: "40 pack", in_stock: true, supplier_id: 1},
  {name: "Water", price: "8.0", description: "The giver of life.", in_stock: true, supplier_id: 1},
  {name: "soil", price: "7.0", description: "Dirt", in_stock: false, supplier_id: 2},
  {name: "Electrolytes", price: "100.25", description: "It's what plants crave.", in_stock: true, supplier_id: 3},
  {name: "cucumber seeds", price: "4.0", description: "40 pack of seeds", in_stock: false, supplier_id: 3},
  {name: "Worms", price: "5.0", description: "Slimy, brown, lives in the ground.", in_stock: true, supplier_id: 2},
  {name: "Rain Barrel", price: "200.0", description: "100 Gallons; plastic", in_stock: nil, supplier_id: 2},
  {name: "Shovel", price: "33.25", description: "Digs and shovels.", in_stock: nil, supplier_id: 3},
  {name: "Rake", price: "55.2", description: "4 ft long. Wood and Metal", in_stock: nil, supplier_id: 1}
])

Image.create!([
  {url: "https://cdn.shopify.com/s/files/1/1111/4912/products/BRAWNDO_74b6c401-65bc-4646-bff9-41dfeaf44c8b_600x.jpg?v=1538670708", description: "Brawndo logo", product_id: nil},
  {url: "https://cdn.shopify.com/s/files/1/1111/4912/products/BRAWNDO_74b6c401-65bc-4646-bff9-41dfeaf44c8b_600x.jpg?v=1538670708", description: "Brawndo logo", product_id: 8},
  {url: "https://parkseed.com/images/xxl/52425-PK-P1.jpg", description: "Cucumber Seeds", product_id: 2},
  {url: "https://i.etsystatic.com/9586350/r/il/797738/1214750908/il_570xN.1214750908_d0jj.jpg", description: "Red Bell Peppers", product_id: 3},
  {url: "https://static1.squarespace.com/static/56af6e7837013bc580443c95/56b3b86f8259b525eeacf01f/56b3c1f70442625622db8b25/1567866972068/?format=1500w", description: "Dirt", product_id: 4},
  {url: "https://cdn.mos.cms.futurecdn.net/i4JxeGNM2xGnSQUCSSDEoe-1200-80.jpg", description: "Worms", product_id: 6},
  {url: "https://images.everydayhealth.com/images/healthy-living/the-health-benefits-of-water-722x406.jpg?sfvrsn=45ccd729_0", description: "Water", product_id: 7},
  {url: "https://d1nw62gticy6e9.cloudfront.net/uploads/Sweetie-Cherry-Tomato-Seed.jpg", description: "Tomato Seeds", product_id: 1}
])
Category.create!([
  {name: "seeds"},
  {name: "fertilizers"}
])

CartedProduct.create!([
  {user_id: 1, product_id: 1, quantity: 4, status: "purchased", order_id: 3},
  {user_id: 1, product_id: 1, quantity: 4, status: "purchased", order_id: 3},
  {user_id: 1, product_id: 3, quantity: 5, status: "purchased", order_id: 3},
  {user_id: 1, product_id: 6, quantity: 2, status: "purchased", order_id: 3},
  {user_id: 1, product_id: 9, quantity: 1, status: "purchased", order_id: 3},
  {user_id: 1, product_id: 6, quantity: 3, status: "purchased", order_id: 7},
  {user_id: 1, product_id: 7, quantity: 2, status: "purchased", order_id: 7},
  {user_id: 1, product_id: 8, quantity: 1, status: "purchased", order_id: 7},
  {user_id: 1, product_id: 1, quantity: 3, status: "removed", order_id: nil}
])

Order.create!([
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: "20.0", tax: "1.8", total: "21.8"},
  {user_id: 1, subtotal: "84.33", tax: "7.59", total: "91.92"},
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 1, subtotal: "131.25", tax: "11.81", total: "143.06"}
])
ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 1},
  {product_id: 3, category_id: 1},
  {product_id: 6, category_id: 2},
  {product_id: 8, category_id: 2}
])
