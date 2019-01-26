require 'csv'
filepath = 'recipes.csv'

CSV.foreach(filepath) do |row|
  puts "#{row[0]} | #{row[1]}}"
end
