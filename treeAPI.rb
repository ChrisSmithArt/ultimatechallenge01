
require 'net/http'
require 'json'
require 'pp'

url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?%24limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
trees = JSON.parse(response) # Convert JSON data into Ruby data.

treecounter = 0

trees.each do |tree| #looping over the JSON data to find all entries with "ash" in the name
    if tree["common_name"].downcase.include? "ash"
        treecounter += 1
    end
end

puts "There are #{treecounter} Ash trees" #output to console the total trees found in the loop