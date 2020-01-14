require "pry"
class TopCompanies::Scraper
        #class method-TopCompanies::Scraper
   
    def self.scrape #class method
         site = "https://www.monster.com/company/?intcid=skr_navigation_www_company"
         page = Nokogiri::HTML(open(site))
         doc = page.css("div.card")
      
     
          
    
    end       


           
end 


