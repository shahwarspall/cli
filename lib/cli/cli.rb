class Topcompanies:Cli

    def call 
        Topcompanies::Scraper.new.hiring_companies
        puts "Welcome to the Top Companies hiring now!"
        Begin
end

def Begin
    