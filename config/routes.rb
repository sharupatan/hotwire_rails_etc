Rails.application.routes.draw do
  root "homes#index"

  get "/hotwire_action", to: "homes#hotwire_action"
end
