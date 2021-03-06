LongBox::Application.routes.draw do

 ##Comics Routes

  match('/', {via: :get, to: 'comics#index'})
  match('comics', {via: :get, to: 'comics#index'})
  match('comics', {via: :post, to: 'comics#create'})
  match('comics/new', {via: :get, to: 'comics#new'})
  match('comics/:id', {via: :get, to: 'comics#show'})
  match('comics/:id/edit', {via: :get, to: 'comics#edit'})
  match('comics/:id', {via: [:patch, :put], to: 'comics#update'})
  match('comics/:id', {via: :delete, to: 'comics#destroy'})

  ##Artists Routes

  match('artists', {via: :get, to: 'artists#index'})
  match('artists', {via: :post, to: 'artists#create'})
  match('artists/new', {via: :get, to: 'artists#new'})
  match('artists/:id', {via: :get, to: 'artists#show'})
  match('artists/:id/edit', {via: :get, to: 'artists#edit'})
  match('artists/:id', {via: [:patch, :put], to: 'artists#update'})
  match('artists/:id', {via: :delete, to: 'artists#destroy'})

  ##Writers Routes

  match('writers', {via: :get, to: 'writers#index'})
  match('writers', {via: :post, to: 'writers#create'})
  match('writers/new', {via: :get, to: 'writers#new'})
  match('writers/:id', {via: :get, to: 'writers#show'})
  match('writers/:id/edit', {via: :get, to: 'writers#edit'})
  match('writers/:id', {via: [:patch, :put], to: 'writers#update'})
  match('writers/:id', {via: :delete, to: 'writers#destroy'})
end
