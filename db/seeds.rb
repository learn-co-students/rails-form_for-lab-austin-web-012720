# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
SchoolClass.create(title: "Biology", room_number: 450)
SchoolClass.create(title: "Math", room_number: 500)

Student.create(first_name: "franco", last_name: "canedo")
Student.create(first_name: "guido", last_name: "canedo")
