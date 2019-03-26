Rails.application.routes.draw do
  root "home#index"
  devise_for :users, path: "", path_names: {
    sign_in: "login", sign_out: "logout", password: "secret",
    confirmation: "verification", unlock: "unblock",
    registration: "register", sign_up: "cmon_let_me_in"
  }
  resources :courses

  namespace :admin do
    resources :courses
  end
end
