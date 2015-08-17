# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

event1 = Event.create(name: 'event1', introduction: 'testing event1')
event2 = Event.create(name: 'event2', introduction: 'testing event2')
event3 = Event.create(name: 'event3', introduction: 'testing event3')

place1 = Place.create(name: 'place1')
place2 = Place.create(name: 'place2')

user1 = User.create(name: 'John', email: 'john@john.com', admin: false, password: '12345678')
user2 = User.create(name: 'Jim', email: 'jim@jim.com', admin: false, password: '12345678')
user3 = User.create(name: 'Albert', email: 'albert@albert.com', admin: true, password: '12345678')
