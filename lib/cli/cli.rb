require 'pry'


class TopCompanies::Cli
  #display the company name
 
 

   def call
      @input = nil  
    until @input == "exit" && @input =="return"
            puts "Explore Your Next Dream Job Now!".colorize(:blue)
            puts "Type 'MENU' to explore the hottest hiring now".colorize(:yellow)
            puts "Type 'Display' to display ALL Companies' detail at once".colorize(:yellow)
            puts "Type 'EXIT' to cancel!".colorize(:yellow)
            
            @input = gets.strip.downcase

        case @input 
            when "menu"
                list_name  
                
            when "display"
                list_All
            when "return"
                search
            when "exit"
            puts "Come Back Soon! See You Later!".colorize(:red)
                 exit
        else 
            puts "INVALID!!! TRY AGAIN!".colorize(:red)
            call
            end
        end
    end 


    def list_name
        TopCompanies::Explore.all.each.with_index(1) do |explore, index|
          
           puts "#{index}. #{explore.name.colorize(:green)}"
        end
        search
     
      
    end


    def list_All
        TopCompanies::Explore.all.each.with_index(1) do |explore, index|
            puts "#{index}. #{explore.name.colorize(:blue)}"
           # puts "Openings": #{explore.openings.colorize(:red)}"
            puts "Review_Url: #{explore.reviews_url.colorize(:green)}" 
            puts "Location: #{explore.location.colorize(:green)}" 
           
        end
    end


    def select_number
        puts "\nSelect the 'Number' BELOW or 'Return' to MENU".colorize(:blue) 
          
        @input = gets.strip
        pick = @input.to_i
        
    if (1..TopCompanies::Explore.all.size).include?(pick) && pick <= TopCompanies::Explore.all.size && @pick != "exit"
        hiring_2 = TopCompanies::Explore.all.each {|explore|explore}[pick-1]
        puts "Name: #{hiring_2.name.colorize(:blue)}"
        puts "Review_Url: #{hiring_2.reviews_url.colorize(:green)}" 
        puts "Location: #{hiring_2.location.colorize(:green)}" 
        search
    else 
        puts "RETURN TO THE MENU...!".colorize(:red)
        call
     end
  end
  

    def search 
        select_number
        list_name
        list_All
        
    end

end































