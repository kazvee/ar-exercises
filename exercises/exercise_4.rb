require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

store4 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store6 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

puts "Stores that carry men's apparel:"
@mens_stores.each { |store| puts "#{store.name} with a revenue of $#{store.annual_revenue} per year." }

@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000) # The `?` is a placeholder used to prevent SQL injection. See: https://edgeapi.rubyonrails.org/classes/ActiveRecord/QueryMethods.html#method-i-where

puts "Stores that carry women's apparel and generate less than $1M/year in revenue:"
@womens_stores.each { |store| puts "#{store.name} with a revenue of $#{store.annual_revenue} per year." }