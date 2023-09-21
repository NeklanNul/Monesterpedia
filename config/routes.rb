 # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html




Rails.application.routes.draw do
  root to:"main#index"

  get "monster", to:"monster#index"

  get "add", to:"addmon#index"
  get "browse", to:"browsemon#index"
  get "del", to:"delmon#index"
  get "definition", to:"definition#index"

end
