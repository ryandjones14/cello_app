# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
List.create(name: "Composers to check out")
List.create(name: "Symphony Ideas")
Todo.create(item: "Bach", list_id: 1)
Todo.create(item: "Zimmer", list_id: 1)
Todo.create(item: "Symphony I", list_id: 2)
Todo.create(item: "Symphony II", list_id: 2)
