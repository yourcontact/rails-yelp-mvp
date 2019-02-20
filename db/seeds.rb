# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Restaurant.create.new for each do
#   faker with name address category reviews

restaurant = Restaurant.create(name: "dim sum ngmaisai", address: "TST", phone_number: "85223452345", category: "chinese")
review = Review.new(content: "mama ruru", rating: 5)
review.restaurant = restaurant
review.save
