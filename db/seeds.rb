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

Restaurant.create(name:'The Keg', address: '123 main st', city:'Toronto', postal_code:'A1A1A1',user_id:1 ,cuisine_id:5, capacity:120, price_range:5,time_open:7,time_close:23)
Restaurant.create(name:'Pizza Hut', address: '125 main st', city:'Toronto', postal_code:'A1A1A1',user_id:1 ,cuisine_id:11, capacity:240, price_range:1,time_open:12,time_close:23)
Restaurant.create(name:'McDonalds', address: '127 main st', city:'Toronto', postal_code:'A1A1A1',user_id:2 ,cuisine_id:7, capacity:100, price_range:1,time_open:1,time_close:23)
Restaurant.create(name:'Red Lobster', address: '129 main st', city:'Toronto', postal_code:'A1A1A1',user_id:2 ,cuisine_id:6, capacity:80, price_range:3,time_open:12,time_close:23)
Restaurant.create(name:'Chipotle', address: '122 main st', city:'Toronto', postal_code:'A1A1A1',user_id:3 ,cuisine_id:9, capacity:20, price_range:2,time_open:7,time_close:23)
Restaurant.create(name:'East Side Marios', address: '124 main st', city:'Toronto', postal_code:'A1A1A1',user_id:3 ,cuisine_id:2, capacity:150, price_range:3,time_open:12,time_close:23)
Restaurant.create(name:'Delfino', address: '126 main st', city:'Toronto', postal_code:'A1A1A1',user_id:4 ,cuisine_id:2, capacity:220, price_range:4,time_open:12,time_close:23)
Restaurant.create(name:'Wilbur', address: '128 main st', city:'Toronto', postal_code:'A1A1A1',user_id:4 ,cuisine_id:9, capacity:130, price_range:3,time_open:11,time_close:23)
