Rails.application.routes.draw do
  match('/', {:via => :get, :to => "artists#index"})
  match('/artists', {:via => :get, :to => "artists#index"})
  match('/artists', {:via => :post, :to => "artists#create"})
  match('/artists/new', {:via => :get, :to => "artists#new"})
  match('/artists/:id', {:via => :get, :to => "artists#show"})
  match('/artists/:id/edit', {:via => :get, :to => "artists#edit"})
  match('/artists/:id', {:via => [:patch, :put], :to => "artists#update"})
  match('/artists/:id', {:via => :delete, :to => 'artists#destroy'})

  match('/shows', {:via => :get, :to => "shows#index"})
  match('/artists/:artist_id/shows', {:via => :post, :to => "shows#create"})
  match('/artists/:artist_id/shows/new', {:via => :get, :to => "shows#new"})
end
