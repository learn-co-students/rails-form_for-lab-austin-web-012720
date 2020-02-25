# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


doug = Student.create(first_name: 'Doug', last_name: 'Harrison')
lacy = Student.create(first_name: 'Lacy', last_name: 'Pupper')
nicole = Student.create(first_name: 'Nicole', last_name: 'Fisher')

class1 = SchoolClass.create(title: 'Cooking', room_number: 45)
class2 = SchoolClass.create(title: 'Borkin', room_number: 15)
 