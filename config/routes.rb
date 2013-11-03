GooderReads::Application.routes.draw do
  resource :session, :only => [:new, :create, :destroy]
  resources :users, :only => [:show, :index] do
    put :friend, :on => :member
    put :unfriend, :on => :member
  end

  root :to => "static_pages#index"
end
