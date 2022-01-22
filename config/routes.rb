Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :netflix_titles, only: %i[index show]
    end
  end
end
