require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

print "Store name: "
new_store = gets.chomp

store = Store.create(name: new_store)
store.errors.messages.each { |error, message| puts "#{error} #{message.first}" }

print "Employee name: "
new_employee = gets.chomp

employee = @store2.employees.create(first_name: new_employee, hourly_rate: 20)
employee.errors.messages.each { |error, message| puts "#{error} #{message.first}" }
