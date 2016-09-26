require 'thor'
require 'nokogiri'
require 'open-uri'

module Dnt
  class Timezone < Thor
    desc "search 'local'", "Display Local and Clock"
    URL = "http://www.timeanddate.com/worldclock/?query="
    MAX_FIND = 19
    def search(params)
      data = Nokogiri::HTML(open(URL+params))
      locals = data.css('.zebra td')
      if locals.empty?
        puts "Results of Search for `#{params}` - 0"
      else
        puts "10 results first for `#{params}`: "
        (0...MAX_FIND).step(2) do |i|
          puts "#{locals[i].inner_text}  |  #{locals[i.next].inner_text}"
        end
      end
    end
  end
end
