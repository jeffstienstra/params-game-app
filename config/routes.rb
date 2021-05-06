Rails.application.routes.draw do
  get "/query_params", controller: "query", action: "query_params"
  get "/guessing_game/:the_users_number", controller: "query", action: "guessing_game"
end
