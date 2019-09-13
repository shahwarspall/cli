require_relative "./Cli/version"
require_relative "./Cli/scraper"
require_relative "./Cli/cli"
require_relative "./Cli/explore"

require 'pry'
require "colorize"
require 'nokogiri'
require 'open-uri'



module Cli
    class Error < StandardError; end
end
