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

     dog_breeds["message"].each do |breeds, subbreeds|
        puts "Breed: #{breeds}"
        subbreeds.each do |k, v|
            puts "   Sub-breed: #{k}"
        end
    end


# Run the script and investigate the pretty print output to figure out how to access the array of returned dog breeds. Then replace the last line of the script with a nested loop that prints out all the dog breeds and associated sub-breeds. The output might look something like this:



# * Brabancon
# * Briard
# * Buhund
#  * Norwegian
# * Bulldog
#  * Boston
#  * English
#  * French
# * Bullterrier
#  * Staffordshire
# 👆 This is just a sub-set of the actual full list. This is just an example of what a" Nicely Formatted List" might look like. Feel free to format your list differently.