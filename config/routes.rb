Rails.application.routes.draw do
  get 'about/james'
  root to: "artists#index"

  resources :artists
end
