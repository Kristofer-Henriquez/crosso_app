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
    delete "/combos/:id" => "combos#destroy"

    get "/tier_lists/:id" => "tier_lists#show"
    post "/tier_lists" => "tier_lists#create"
    patch "/tier_lists/:id" => "tier_lists#update"

    get "/tips/:id" => "tips#show"
    post "/tips" => "tips#create"
  end
end
