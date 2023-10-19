require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@total_annual_revenue = Store.sum(:annual_revenue)
@average_annual_revenue = Store.average(:annual_revenue)
@over_1_million_annual_revenue = Store.where('annual_revenue < ?', 1000000).count

puts "Total annual revenue for the entire company (all stores): $#{@total_annual_revenue}"
puts "Average annual revenue for the entire company (all stores): $#{@average_annual_revenue}"
puts "Number of stores generating over $1M in annual sales: #{@over_1_million_annual_revenue}"