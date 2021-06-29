Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "articles#index"
	get "/articles", to: "articles#index", as: :article
  get "/articles/new", to: "articles#new"
  get "/articles/:id", to: "articles#show"
  post "/articles", to: "articles#create"
  get "/articles/:id/edit", to: "articles#edit", as: :edit_article
  patch "/articles/:id", to: "articles#update", as: :update_article
  delete "/articles/:id", to: "articles#destroy"

  # get '/locations', to:'locations#index', as: :location
  get '/locations/:location', to: 'locations#show', as: :location
	resources :locations, only: [:index]
end
