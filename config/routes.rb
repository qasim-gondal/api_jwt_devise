Rails.application.routes.draw do
  devise_for :users, controllers: {
                       sessions: "users/sessions",
                       registerations: "users/registerations",
                     }
  namespace :api, defaults: { format: :json }, constraints: { subdomain: "api" }, path: "/" do
  end
end
