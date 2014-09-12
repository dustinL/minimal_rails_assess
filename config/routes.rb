Rails.application.routes.draw do
  match('/', {:via => :get, :to => "artists#index"})
  match('/artists', {:via => :get, :to => "artists#index"})
  match('/artists', {:via => :post, :to => "artists#create"})
  match('/artists/new', {:via => :get, :to => "artists#new"})
  match('/artists/:id', {:via => :get, :to => "artists#show"})
  match('/artists/:id/edit', {:via => :get, :to => "artists#edit"})
  match('artists/:id/', {:via => [:patch, :put], :to => "artists#update"})

end
