require_relative "./Cli/version"
require_relative "./Cli/explore"
require_relative "./Cli/scraper"
require_relative "./Cli/cli"

require "colorize"
require 'nokogiri'
require 'open-uri'
require 'pry'


module Cli
    class Error < StandardError; end
end

require_relative '../config/environment'