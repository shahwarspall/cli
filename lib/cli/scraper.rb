class TopCompanies::Scraper

    def self.scrape 
        site = "https://www.monster.com/company/?intcid=skr_navigation_www_company"
        page = page.css("div.company_logo")
        page = Nokogiri::HTML(open(site))
    end 
end 