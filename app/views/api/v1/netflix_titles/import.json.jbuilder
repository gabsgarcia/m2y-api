json.array! @netflix_titles do |netflix_title|
  json.extract! netflix_title, :show_id, :title, :genre, :year, :country,
                              :published_at, :description
end
