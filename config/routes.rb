Rails.application.routes.draw do
  match('/', {:via => :get, :to => "artists#index"})
  match('/artists', {:via => :get, :to => "artists#index"})
  match('/artists', {:via => :post, :to => "artists#create"})

end
