Rails.application.routes.draw do
  match('/', {:via => :get, :to => "artists#index"})
  match('/artists', {:via => :get, :to => "artists#index"})
  match('/artists', {:via => :post, :to => "artists#create"})
  match('/artists/new', {:via => :get, :to => "artists#new"})
  match('/artists/:id', {:via => :get, :to => "artists#show"})

end
