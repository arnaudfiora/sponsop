require 'json'
require 'open-uri'

url = 'https://randomuser.me/api/'
user_serialized = open(url).read
user = JSON.parse(user_serialized)

print user["results"].first["gender"]
