require_relative "../lib/cli/version"
require_relative "../lib/cli/scraper"
require_relative "../lib/cli/cli"
require_relative "../lib/cli/explore"
#require_relative '../config/environment'

require 'pry'
require "colorize"
require 'nokogiri'
require 'open-uri'



module TopCompanies
   class Error < StandardError; end
    
end