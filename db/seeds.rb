# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 u1 = User.create(name:"user1", email:"user1@gmail.com")
 u2 = User.create(name:"user2", email:"user2@gmail.com")

 w1 = Work.create(description:"description1", user:u1)
 w2 = Work.create(description:"description2", user:u1)
 w3 = Work.create(description:"description3", user:u2)
 
