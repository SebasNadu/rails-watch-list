require 'open-uri'
require 'json'

url = "https://tmdb.lewagon.com/movie/top_rated"
movies = JSON.parse(URI.open(url).read)["results"]
movies.each do |movie|
  p movie["original_title"]
end
