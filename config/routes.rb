GooderReads::Application.routes.draw do
  resource :session, :only => [:new, :create, :destroy]

  root :to => "static_pages#index"
end
