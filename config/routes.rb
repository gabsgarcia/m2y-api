Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :netflix_titles, only: %i[index show]
      get '/import/', to: 'netflix_titles#import', as: 'import'
    end
  end
end
