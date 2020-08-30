Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/games" => "games#index"
    get "/games/:id" => "games#show"

    get "/combos/:id" => "combos#show"
    post "/combos" => "combos#create"
    patch "/combos/:id" => "combos#update"
  end
end
