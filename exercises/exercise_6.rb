require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Hello", last_name: "Kitty", hourly_rate: 150)
@store1.employees.create(first_name: "Gudetama", last_name: "Lazy Egg", hourly_rate: 180)
@store1.employees.create(first_name: "Keroppi", last_name: "Frog", hourly_rate: 75)
@store2.employees.create(first_name: "Pochacco", last_name: "Puppy", hourly_rate: 120)
@store2.employees.create(first_name: "Badtz-Maru", last_name: "Penguin", hourly_rate: 50)