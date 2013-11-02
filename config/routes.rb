GooderReads::Application.routes.draw do
  resource :session, :only => [:new, :create, :destroy]
  resources :users, :only => [:show, :index]

  root :to => "static_pages#index"
end
