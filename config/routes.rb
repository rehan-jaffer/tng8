Rails.application.routes.draw do

  root to: "snippets#index"
  resources :snippets

end
