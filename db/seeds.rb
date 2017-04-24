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

Restaurant.create(name:'The Keg', address: '123 main st', city:'Toronto', postal_code:'A1A1A1',user_id:1 ,cuisine_id:5, capacity:120, price_range:5,time_open:7,time_close:23, description:"The Keg Steakhouse & Bar serves the finest cuts of succulent steak, aged for tenderness and grilled to perfection. Prime rib is a Keg specialty, slow roasted, hand carved and perfectly seasoned with special Keg spices. The restaurant also serves delicious seafood, memorable appetizers, crisp salads and decadent desserts. A casual ambiance and friendly, very knowledgeable staff are proud and reliable trademarks of The Keg Steakhouse & Bar. You'll find a truly comfortable and satisfying dining atmosphere accompanied by a fun and up-scale bar setting where guests can enjoy an excellent wine list, signature Keg martinis, and fresh squeezed juice cocktails.")

Restaurant.create(name:'Pizza Hut', address: '125 main st', city:'Toronto', postal_code:'A1A1A1',user_id:1 ,cuisine_id:11, capacity:240, price_range:1,time_open:12,time_close:23, description:"Pizza Hut is an American restaurant chain and international franchise, known for its Italian-American cuisine menu including pizza and pasta, as well as side dishes and desserts. The company has over 15,000 locations worldwide as of 2015, and is a subsidiary of Yum! Brands, Inc., one of the world's largest restaurant companies.")

Restaurant.create(name:'McDonalds', address: '127 main st', city:'Toronto', postal_code:'A1A1A1',user_id:2 ,cuisine_id:7, capacity:100, price_range:1,time_open:1,time_close:23, description:"McDonald's (or simply as McD) is an American hamburger and fast food restaurant chain. It was founded in 1940 as a barbecue restaurant operated by Richard and Maurice McDonald. In 1948, they reorganized their business as a hamburger stand, using production line principles. The first McDonald's franchise using the arches logo opened in Phoenix, Arizona in 1953. Businessman Ray Kroc joined the company as a franchise agent in 1955 and subsequently purchased the chain from the McDonald brothers. Based in Oak Brook, Illinois, McDonald's confirmed plans to move its global headquarters to Chicago by early 2018.")

Restaurant.create(name:'Red Lobster', address: '129 main st', city:'Toronto', postal_code:'A1A1A1',user_id:2 ,cuisine_id:6, capacity:80, price_range:3,time_open:12,time_close:23, description:"Red Lobster is an American casual dining restaurant chain headquartered in Orlando, Florida. The company has operations in Canada, Malaysia, Saudi Arabia, the United Arab Emirates, Qatar, Mexico, and Japan, in addition to the United States. As of February 24, 2013, the company had 705 locations worldwide. Golden Gate Capital has been Red Lobster's parent company since it was acquired from Darden Restaurants on July 28, 2014.")

Restaurant.create(name:'Chipotle', address: '122 main st', city:'Toronto', postal_code:'A1A1A1',user_id:3 ,cuisine_id:9, capacity:20, price_range:2,time_open:7,time_close:23, description:"Chipotle Mexican Grill, Inc. (/tʃᵻˈpoʊtleɪ/)[6] is an American chain of fast casual restaurants in the United States, United Kingdom,[7] Canada,[8][9] Germany,[10] and France,[11] specializing in tacos and Mission-style[12][13] burritos. Its name derives from chipotle, the Nahuatl name for a smoked and dried jalapeño chili pepper.[14] The company currently trades on the New York Stock Exchange under the ticker symbol CMG.[15]")

Restaurant.create(name:'East Side Marios', address: '124 main st', city:'Toronto', postal_code:'A1A1A1',user_id:3 ,cuisine_id:2, capacity:150, price_range:3,time_open:12,time_close:23, description:"East Side Mario's is a Canadian chain of casual dining restaurants, managed by its parent holding company Prime Restaurants, which operates in Canada and the United States. The restaurant specializes in Italian-American cuisine. Individual locations aim to recreate the historic ambience found at the corner of Canal Street and Mulberry Street in Lower Manhattan.[1] The brand is marketed as 'A taste of little Italy'. It is best recognized by its old logo featuring the Statue of Liberty holding a large tomato instead of a torch, as well as the jingle containing the catch phrase 'Hey, budda boom budda bing'")

Restaurant.create(name:'Delfino', address: '126 main st', city:'Toronto', postal_code:'A1A1A1',user_id:4 ,cuisine_id:2, capacity:220, price_range:4,time_open:12,time_close:23, description:"Located in the flourishing neighbourhood of Roncesvalles Village in Toronto Canada, Defina is a bustling wood fired pizzeria. Inspired by rustic tradition, we offer a blistering thin Napoletana-style dough, a crispier firm Roma-style crust or for an adventurous palate, the ancient grain Kamut.

At Defina we feel our warmth and communal energy is what makes us a popular host for our friends and neighbours. Local patrons and visitors alike meet for our weekly Defina Night Specials and share what they enjoy most: good value, great quality and friendly service.")

Restaurant.create(name:'Wilbur', address: '128 main st', city:'Toronto', postal_code:'A1A1A1',user_id:4 ,cuisine_id:9, capacity:130, price_range:3,time_open:11,time_close:23, description:"Wilbur Mexicana is a taco joint on King West named after Wilbur Scoville, the chemist responsible for creating the Scoville scale, the measure of heat used to gauge the pungency of chili peppers.")
