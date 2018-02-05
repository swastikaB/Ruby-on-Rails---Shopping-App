# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

desc = "You'll be on the move in style in the Gerrit Chrysta. This leather sandal designed with a dual-density thick cushioned footbed for unparalleled flexibility and comfort. The wedge heel makes this a versatile pick for everything from dresses to jeans."
prod = [{name: "White Comfy Sandal", description: "#{desc}", image: "shoe1.jpeg", price: 45.00 },
        {name: "Balle Grey",description: "#{desc}", image: "shoe2.jpeg", price: 115.00 },
        {name: "Comfy Slip On",description: "#{desc}", image: "shoe3.jpeg", price: 80.00 },
        {name: "Regular White Sandal",description: "#{desc}", image: "shoe4.jpeg", price: 75.00 }
    ]


prod.each do |product|
    Product.create(product)
end

