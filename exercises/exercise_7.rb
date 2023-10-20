require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Please enter a Store Name:"
new_store_name = gets.chomp

puts "Please enter the Annual Revenue:"
new_store_revenue = gets.chomp                              # <= "Annual revenue can't be blank" & "Annual revenue is not a number" error if left blank

puts "Does the store carry men's apparel? (true/false):"    # <= "Store must carry at least one of men's or women's apparel" error if left blank
mens_apparel = gets.chomp

puts "Does the store carry women's apparel? (true/false):"  # <= "Store must carry at least one of men's or women's apparel" error if left blank
womens_apparel = gets.chomp

new_store = Store.create(name: new_store_name, annual_revenue: new_store_revenue, mens_apparel: mens_apparel, womens_apparel: womens_apparel)

unless new_store.save
  puts "Error: "
  new_store.errors.full_messages.each do |message|
    puts message
  end
end