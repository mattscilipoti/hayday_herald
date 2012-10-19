# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'database_cleaner'

if ENV['RESET'] =~ /true/i
  puts "Cleaning db (due to RESET)"
  DatabaseCleaner.clean_with :truncation
end

puts "Seeding db..."
crops = %w(Wheat Corn Soybean Sugarcane Carrot Pumpkin Indigo ChiliPepper Raspberry Apple)
crops.each {|crop| Item.find_or_create_by_name(:name => crop)}
