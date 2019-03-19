Rails.application.routes.draw do
  get 'events/gigs'
  get 'about/james'
  root to: "artists#index"

  resources :artists
end
