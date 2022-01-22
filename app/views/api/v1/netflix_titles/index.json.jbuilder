json.array! @netflix_titles do |netflix_title|
  json.extract! netflix_title, :show_id, :type, :title, :director, :cast, :country,
                              :date_added, :release_year, :rating, :duration,
                              :listed_in, :description
end
