require 'pry'

class TopCompanies::Explore
   

  attr_accessor  :name, :reviews_url, :location
 
  
#    @@all= []

    #def initialize(name=nil, url=nil, location=nil, openings_url=nil,reviews_url=nil)
       # @name = name
       # @reviews_url = reviews_url
      #  @location = location
        #@openings_url = openings_url
     #   @@all << self 
       # binding.pry
        
    #  end

      def self.all 
        @@all ||= self.create
       
    end

    

    def self.create
      TopCompanies::Scraper.scrape.collect do |doc|
        
        explore = TopCompanies::Explore.new  #create Explore instance 
        
        explore.name = doc.css("h2.company_name").text.gsub("\r\n","")
        explore.reviews_url = doc.css("div.company_links a").last.attr('href')
        explore.location = doc.css("ul li").first.attr('title')
        
      
        explore
        
        end 
    end

       
       # puts "Name: #{explore.name}"
        #puts "Reviews page: #{explore.reviews_url}"
        #puts "Location: #{explore.location}"
        #puts "Openings : #{explore.opening_url} "
        #explore
   
   
   # def self.all
    #    @@all
        
    #end

end 
