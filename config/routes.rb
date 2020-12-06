Rails.application.routes.draw do
  root to: 'feed#index'
  get 'feed/index'
  get 'feed/update'
  get 'page/index'
  get "page/show/:id" => "page#show"
  get 'page/new'
  get "page/edit/:id" => "page#edit"
  get "page/destroy/:id" => "page#destroy"
  post "page/create"
  post "page/update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
