# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cuisines = Cuisine.create([{name: 'Korean'}, {name: 'Italian'}, {name: 'Indian'}, {name: 'Thai'}, {name: 'Steak'}, {name: 'Seafood'}, {name: 'Chinese'}, {name: 'French'}, {name: 'Mexican'}, {name: 'Japanese'}, {name: 'Pizzeria'}])

User.create(name: 'Paul', email: 'paul@gmail.com', phone_number: '4168802823', password_digest: 'password')
User.create(name: 'Mark', email: 'mark@gmail.com', phone_number: '4168802823', password_digest: 'password')
User.create(name: 'John', email: 'john@gmail.com', phone_number: '4168802823', password_digest: 'password')
User.create(name: 'Swapna', email: 'swapna@gmail.com', phone_number: '4168802823', password_digest: 'password')
User.create(name: 'Azadeh', email: 'azadeh@gmail.com', phone_number: '4168802823', password_digest: 'password')
User.create(name: 'Jenny', email: 'jenny@gmail.com', phone_number: '4168802823', password_digest: 'password')
User.create(name: 'Bill', email: 'bill@gmail.com', phone_number: '4168802823', password_digest: 'password')
