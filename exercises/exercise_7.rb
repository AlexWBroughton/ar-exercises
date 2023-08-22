require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Ask the user for a store name
print "Enter a store name: "
store_name = gets.chomp

# Ask the user if the store carries men's apparel
print "Does the store carry men's apparel? (yes/no): "
mens_apparel_input = gets.chomp.downcase
mens_apparel = mens_apparel_input == 'yes'

# Ask the user if the store carries women's apparel
print "Does the store carry women's apparel? (yes/no): "
womens_apparel_input = gets.chomp.downcase
womens_apparel = womens_apparel_input == 'yes'

# Ask the user for the store's annual revenue
print "Enter the store's annual revenue: "
annual_revenue = gets.chomp.to_i

# Attempt to create a store with the inputted information
new_store = Store.new(
  name: store_name,
  mens_apparel: mens_apparel,
  womens_apparel: womens_apparel,
  annual_revenue: annual_revenue
)

# Display error messages if any
if new_store.save
  puts "Store was successfully created."
else
  puts "Error creating the store:"
  new_store.errors.full_messages.each do |message|
    puts message
  end
end





