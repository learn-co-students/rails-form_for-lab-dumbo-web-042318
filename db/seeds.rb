# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
john = Student.create(first_name: "John", last_name: "Chriest")
jen = Student.create(first_name: "Jen", last_name: "Bee")

access_labs = SchoolClass.create(title: "Access Labs", room_number: 13)
web_dev = SchoolClass.create(title: "Web Development", room_number: 11)
