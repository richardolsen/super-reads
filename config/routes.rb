GooderReads::Application.routes.draw do
  resource :session, :only => [:new, :create, :destroy]
  resources :users, :only => [:show, :index] do
    put :friend, :on => :member
    put :unfriend, :on => :member

    resources :texts, :only => [:index]
  end
  resources :texts, :only => [:show, :index] do
    resources :comments, :only => [:show, :index, :create]
    resources :text_states, :only => [:create, :update]

    post :rate, :on => :member
  end
  resources :authors, :only => [:show, :index]
  resources :genres, :only => [:show, :index]

  root :to => "static_pages#index"
end
