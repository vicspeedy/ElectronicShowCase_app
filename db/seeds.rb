# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'csv'

puts 'Importing categories...'
CSV.foreach(Rails.root.join('db/seeds/csv/categories.csv'), headers: true) do |row|
  Category.create! do |category|
    category.id = row[0]
    category.name = row[1]
    category.available = row[2]
  end
end

require 'csv'

puts 'Importing features...'
CSV.foreach(Rails.root.join('db/seeds/csv/features.csv'), headers: true) do |row|
  Feature.create! do |feature|
    feature.id = row[0]
    feature.name = row[1]
    feature.available = row[2]
  end
end

