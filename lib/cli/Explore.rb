class TopCompanies::Explore

    attr_accessor :name, :opening, :reviews


    @@all= []


  def self.create
    TopCompanies::Scraper.scrape.collect do |page|
        explore.name = page.css ("h2.company_name").text.split("")
        explore.reviews = page.css("div.company_links").attr('href').value
        explore.openings = page.css("li.window.open(this.href,'pop'); return false").attr('href').value
        Explore = TopCompanies::Explore.new 
        explore

    end
end 

    def self.all
        @@all
    end
end 
