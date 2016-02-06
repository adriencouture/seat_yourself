# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

testuser = User.create(name: 'Test', email: 'test@test.com', password: 'test', password_confirmation: 'test')
santouka = Restaurant.create(name: 'Santouka', capacity: 35, photo: 'http://torontolife.com/wp-content/uploads/2012/11/nov12-santouka-16.jpg')
Reservation.create(user: testuser, restaurant: santouka, party_size: 5, time: DateTime.new(2016,2,14,19))

user2 = User.create(name: 'Cody', email: 'cody@test.com', password: 'test', password_confirmation: 'test')
turtle = Restaurant.create(name: 'Golden Turtle', capacity: 65, photo: 'http://s3-media1.fl.yelpcdn.com/bphoto/Y6ekYZ0TXBx2Rjn-lL9MYA/o.jpg')
Reservation.create(user: user2, restaurant: turtle, party_size: 6, time: DateTime.new(2016,4,20,19))

user3 = User.create(name: 'Adrien', email: 'adrien@test.com', password: 'test', password_confirmation: 'test')
terroni = Restaurant.create(name: 'Terroni', capacity: 125, photo: 'http://www.blogto.com/listings/restaurants/upload/2011/11/20112311-BarCentrale4.JPG')
Reservation.create(user: user3, restaurant: terroni, party_size: 3, time: DateTime.new(2016,6,22,19))
