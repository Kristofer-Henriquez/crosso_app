Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/games" => "games#index"
    get "/games/:id" => "games#show"

    get "/characters" => "characters#index"
    get "/characters/:id" => "characters#show"

    get "/combos" => "combos#index"
    get "/combos/:id" => "combos#show"
    post "/combos" => "combos#create"
    patch "/combos/:id" => "combos#update"
    delete "/combos/:id" => "combos#destroy"

    get "/tier_lists" => "tier_lists#index"
    get "/tier_lists/:id" => "tier_lists#show"
    post "/tier_lists" => "tier_lists#create"
    patch "/tier_lists/:id" => "tier_lists#update"

    get "/tips" => "tips#index"
    get "/tips/:id" => "tips#show"
    post "/tips" => "tips#create"
    patch "/tips/:id" => "tips#update"

    get "/tutorials" => "tutorials#index"
    get "/tutorials/:id" => "tutorials#show"
    post "/tutorials" => "tutorials#create"
    patch "/tutorials/:id" => "tutorials#update"

    post "/users" => "users#create"
    get "/sessions" => "sessions#create"
    post "/sessions" => "sessions#create"
  end
end
