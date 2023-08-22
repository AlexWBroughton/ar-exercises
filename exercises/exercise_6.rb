require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'


puts "Exercise 6"
puts "----------"



# Your code goes here ...

@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)
@store1.employees.create(first_name: "Jane", last_name: "Smith", hourly_rate: 55)

@store2.employees.create(first_name: "Michael", last_name: "Johnson", hourly_rate: 65)
@store2.employees.create(first_name: "Emily", last_name: "Williams", hourly_rate: 70)