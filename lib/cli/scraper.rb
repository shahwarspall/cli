class TopCompanies::scraper

    def self.scrape 
        site = "https://www.monster.com/company/?intcid=skr_navigation_www_company"
        doc = page.css("div.company_logo")
        page = Nokogiri::HTML(open(site))
    end 
end 