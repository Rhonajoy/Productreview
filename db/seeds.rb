# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
Review.create(user: user1, product: product1, star_rating: 4, comment: "Great product!")
Review.create(user: user2, product: product1, star_rating: 5, comment: "Love it!")
Review.create(user: user3, product: product1, star_rating: 3, comment: "Decent")

Review.create(user: user1, product: product2, star_rating: 5, comment: "Highly recommended!")
Review.create(user: user2, product: product2, star_rating: 4, comment: "Very useful")

Review.create(user: user1, product: product3, star_rating: 3, comment: "Average")
Review.create(user: user3, product: product3, star_rating: 2, comment: "Not impressed")

Review.create(user: user2, product: product4, star_rating: 4, comment: "Good value for money")

Review.create(user: user3, product: product5, star_rating: 5, comment: "Excellent quality")
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here

puts "Seeding done!"