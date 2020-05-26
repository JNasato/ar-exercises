require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jeremy", last_name: "Nasato", hourly_rate: 100)
@store1.employees.create(first_name: "Jacklyn", last_name: "Harrietha", hourly_rate: 120)
@store2.employees.create(first_name: "George", last_name: "St. Geegland", hourly_rate: 200)
@store2.employees.create(first_name: "Gil", last_name: "Faizon", hourly_rate: 40)
