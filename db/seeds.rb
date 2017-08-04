# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

my_place = Place.create(country: 'USA', state: 'VA', city: 'Springfield')

first_post = my_place.posts.create(title: 'CRAZY tree', photo_url: 'http://i.imgur.com/IMGCj.jpg')

first_guess = first_post.guesses.create(guess_text: 'its a palm tree')
