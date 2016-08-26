# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


organisation = organisation.create([{name: 'Web Programmer', description: 'people who are intersted in web development', user_id: '1'}])
user = User.create([{first_name: 'Rahul', last_name:'Rishi', email:'rahul@gmail.com', password:'password'}])
organisation = organisation.create([{name: 'cooking', description: 'people who are intersted in learning cooking', user_id: '2'}])

