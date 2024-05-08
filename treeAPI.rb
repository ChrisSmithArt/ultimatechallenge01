
require 'net/http'
require 'json'
require 'pp'

url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?%24limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
trees = JSON.parse(response) # Convert JSON data into Ruby data.

treecounter = 0

trees.each do |tree|
    if tree["common_name"].include? "ash"
        treecounter += 1
    end
end

puts "There are #{treecounter} Ash trees"