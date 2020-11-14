# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require('ffaker')

5.times do |i| 
  Item.create(description:FFaker::Product.product_name, price:FFaker::Random.rand(max = 1000), quantity:FFaker::Random.rand(max = 10))
end