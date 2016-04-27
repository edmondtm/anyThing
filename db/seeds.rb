# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create(category_name:"glassware")
Subcategory.create(subcategory_name:"beaker")
Subcategory.create(subcategory_name:"burette")
Subcategory.create(subcategory_name:"")
Subcategory.create(subcategory_name:"")
Subcategory.create(subcategory_name:"")



Product.create(product_name: "Pyrex Low Form Beaker", product_sku: "KSFE-1000", product_brand: "Pyrex", product_description: "<ul><li>Complies with ISO 3819 and DIN 12331</li><li>Manufactured from Pyrex borosilicate glass</li><li>Excellent thermal performance</li><li>High resistance to chemical attack</li><li>White graduations and marking spot</li></ul>", category_id: "1", subcategory_id:"1")
product = Product.find(1)
product.variations.create(variation_name: "5 ml", variation_sku: "/03M", variation_price: "11.00")
product.variations.create(variation_name: "10 ml", variation_sku: "/05M", variation_price: "13.00")
product.variations.create(variation_name: "25 ml", variation_sku: "/11M", variation_price: "10.00")
product.variations.create(variation_name: "50 ml", variation_sku: "/02M", variation_price: "10.00")
product.variations.create(variation_name: "100 ml", variation_sku: "/04D", variation_price: "9.00")
product.variations.create(variation_name: "150 ml", variation_sku: "/06D", variation_price: "12.00")
product.variations.create(variation_name: "250 ml", variation_sku: "/10D", variation_price: "12.00")
product.variations.create(variation_name: "400 ml", variation_sku: "/14D", variation_price: "14.00")
product.variations.create(variation_name: "600 ml", variation_sku: "/18D", variation_price: "16.00")
product.variations.create(variation_name: "800 ml", variation_sku: "/20D", variation_price: "24.00")
product.variations.create(variation_name: "1000 ml", variation_sku: "/22D", variation_price: "2.00")
product.variations.create(variation_name: "2000 ml", variation_sku: "/28D", variation_price: "47.00")
product.variations.create(variation_name: "3000 ml", variation_sku: "/30D", variation_price: "79.00")
product.variations.create(variation_name: "5000 ml", variation_sku: "/34D", variation_price: "149.00")
product.variations.create(variation_name: "10000 ml", variation_sku: "/38D", variation_price: "705.00")

Product.create(product_name: "Pyrex Low Form Heavy Duty Beaker", product_sku: "KSFE-1003", product_brand: "Pyrex", product_description: "<ul><li>Mechanically stronger than standard beakers</li><li>Designed for longer life and increased user safety</li><li>Reinforced rims and spout, less prone to breakage during washing etc.</li><li>Thicker walls and heavier bases</li><li>Manufactured from Pyrex borosilicate glass</li><li>White graduations and marking spot</li></ul>", category_id: "1", subcategory_id:"1")
product = Product.find(2)
product.variations.create(variation_name: "150 ml", variation_sku: "-150", variation_price: "19.00")
product.variations.create(variation_name: "250 ml", variation_sku: "-250", variation_price: "19.00")
product.variations.create(variation_name: "400 ml", variation_sku: "-400", variation_price: "24.00")
product.variations.create(variation_name: "600 ml", variation_sku: "-600", variation_price: "28.00")
product.variations.create(variation_name: "800 ml", variation_sku: "-800", variation_price: "54.00")
product.variations.create(variation_name: "1000 ml", variation_sku: "-1L", variation_price: "111.00")
product.variations.create(variation_name: "2000 ml", variation_sku: "-2L", variation_price: "313.00")
product.variations.create(variation_name: "5000 ml", variation_sku: "-5L", variation_price: "217.00")

Product.create(product_name: "Pyrex Tall Form Beaker", product_sku: "KSFE-1015", product_brand: "Pyrex", product_description: "<ul><li>Complies with ISO 3819 and DIN 12331</li><li>Manufactured from Pyrex borosilicate glass</li><li>Tall form with spout</li><li>White graduations and marking spot</li></ul>", category_id: "1", subcategory_id:"1")
product = Product.find(3)
product.variations.create(variation_name: "50 ml", variation_sku: "/02M", variation_price: "10.00")
product.variations.create(variation_name: "100 ml", variation_sku: "/04D", variation_price: "10.00")
product.variations.create(variation_name: "150 ml", variation_sku: "/06D", variation_price: "12.00")
product.variations.create(variation_name: "250 ml", variation_sku: "/10D", variation_price: "13.00")
product.variations.create(variation_name: "400 ml", variation_sku: "/14D", variation_price: "14.00")
product.variations.create(variation_name: "600 ml", variation_sku: "/18D", variation_price: "17.00")
product.variations.create(variation_name: "1000 ml", variation_sku: "22D", variation_price: "27.00")
product.variations.create(variation_name: "2000 ml", variation_sku: "26D", variation_price: "49.00")

Product.create(product_name: "Pyrex Conical Form Beaker", product_sku: "KSFE-1020", product_brand: "Pyrex", product_description: "<ul><li>Conical shape (Phillips pattern) with spout</li><li>Manufactured from Pyrex borosilicate glass</li><li>Excellent thermal performance and chemical resistance</li></ul>", category_id: "1", subcategory_id:"1")
product = Product.find(3)
product.variations.create(variation_name: "250 ml", variation_sku: "/06D", variation_price: "26.00")
product.variations.create(variation_name: "500 ml", variation_sku: "/16D", variation_price: "43.00")

Product.create(product_name: "Pyrex Jacketed Beaker", product_sku: "KSFE-1025", product_brand: "Pyrex", product_description: "<ul><li>Useful for maintaining samples at a constant temperature</li><li>With integral jacket through which a teperature controlling medium can be circulated</li><li>Manufactured from heat resistant Pyrex borosilicate glass</li><li>With PTFE screwthread connectors for simple and safe connection of 9mm bore tubing</li></ul>", category_id: "1", subcategory_id:"1")
product = Product.find(4)
product.variations.create(variation_name: "250 ml", variation_sku: "/10SC", variation_price: "568.00")
product.variations.create(variation_name: "600 ml", variation_sku: "/18SC", variation_price: "668.00")
product.variations.create(variation_name: "1000 ml", variation_sku: "/22SC", variation_price: "750.00")
product.variations.create(variation_name: "2000 ml", variation_sku: "/28SC", variation_price: "960.00")

Product.create(product_name: "Pyrex PTFE key, class AS (works certified) Burette", product_sku: "KSFE-3295", product_brand: "Pyrex", product_description: "<ul><li>Complies with ISO 385</li><li>Individually tested and supplied with cerrtificate showing exact volume dispensed at 3 points on the scale</li><li>Individual serial number and cerrtificate provides complete traceability to National Standards</li><li>Each burette has a +30s waiting time before final reading can be taken</li><li>Manufactured from precision-bore borosilicate glass tubing for high accuracy</li><li>1.5mm bore PTFE key which requires no lubrication</li><li>White enamel graduations</li><li>White enamel graduations</li></ul>", category_id: "1", subcategory_id:"2")
product = Product.find(5)
product.variations.create(variation_name: "10 ml - graduations 0.02 ml", variation_sku: "/22ASWC", variation_price: "227.00")
product.variations.create(variation_name: "25 ml - graduations 0.10 ml", variation_sku: "/24ASWC", variation_price: "203.00")
product.variations.create(variation_name: "50 ml - graduations 0.10 ml", variation_sku: "/26ASWC", variation_price: "207.00")
product.variations.create(variation_name: "100 ml - graduations 0.20 ml", variation_sku: "/28ASWC", variation_price: "251.00")

Product.create(product_name: "Pyrex PTFE key, class AS Burette", product_sku: "KSFE-3295", product_brand: "Pyrex", product_description: "<ul><li>Complies with ISO 385</li><li>Manufactured from precision-bore borosilicate glass tubing for high accuracy</li><li>Each burette has a +30s waiting time before final reading can be taken</li><li>Graduations in white enamel for increased visibility with dark solutions</li><li>Grease-free interchangable PTFE key with 1.5mm bore</li></ul>", category_id: "1", subcategory_id:"2")
product = Product.find(6)
product.variations.create(variation_name: "10 ml - graduations 0.02 ml", variation_sku: "/12AS", variation_price: "153.00")
product.variations.create(variation_name: "25 ml - graduations 0.10 ml", variation_sku: "/14AS", variation_price: "129.00")
product.variations.create(variation_name: "50 ml - graduations 0.10 ml", variation_sku: "/16AS", variation_price: "137.00")
product.variations.create(variation_name: "100 ml - graduations 0.20 ml", variation_sku: "/18AS", variation_price: "178.00")









