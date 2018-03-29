Rails.application.routes.draw do
  resources :movies
  get 'examples/form'

  resources :users
=begin
    get "/articles"
    post "/articles"
    delete "/articles"
    get "/articles/;id"
    get "/articles/new"
    get "/articles/:id/edit"
    patch "/articles/:id"
    put "/articles/:id"
=end

  get 'welcome/index'

  post ':controller(/:action(/:id))'
  get ':controller(/:action(/:id(.:format)))'


  root :to => 'welcome#index'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
