class Topcompanies:CLI

    def call 
        Topcompanies::Scraper.new.hiring_companies
        puts "Welcome to the Top Companies' hiring now!"
        start
end

def start
    puts ""
    puts "Hi there! Explore Company to find the best fit".bold
    puts ""
    @input = gets.strip.to_i

print_explore(input)

puts ""
puts "Search for company"
input = gets.strip

explore = Topcompanies::Explore.find(input.to_i)

print_explore(explore)

puts ""
puts "Would you like to explore another company's oppportunity? Enter Y or N"

input = gets.strip.downcase
if input == "y"
  start
elsif input == "n"
  puts ""
  puts "Thank you! Have a great day!"
  exit
else
  puts ""
  puts "I don't understand that answer."
  start
end
end

def print_explore(explore)
puts ""
puts "----------- #{explore.name} -----------"
puts ""
puts "Opening:           #{explore.opening}"
puts "Reviews:          #{explore.reviews}"
end
end

end