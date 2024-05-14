# Student name: Chris Smith
# Student ID: 0406238
# Course: WEBD-3011 (255589) Agile Full Stack Web Development
# Instructor: Diogo Iwasaki
# Date: May 24, 2024

# 3) Write a script that uses the JSON provided by the dog.ceo API to print out a nicely formatted list of dog breeds and sub-breeds. 
# Some starter code:

require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response) # Convert JSON data into Ruby data.
# pp dog_breeds # pp stands for pretty print.


dog_breeds["message"].each do |key1, value1| #Looping over the parsed JSON to get the breeds
    puts "Breed: #{key1}"
    value1.each do |key2, value2| #Accessing the Sub-breeds in the value from the first loop
        puts "   Sub-breed: #{key2}"
    end
end