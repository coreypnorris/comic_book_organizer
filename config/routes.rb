LongBox::Application.routes.draw do
  match('/', {via: :get, to: 'comics#index'})
  match('comics', {via: :get, to: 'comics#index'})
  match('comics', {via: :post, to: 'comics#create'})
  match('comics/new', {via: :get, to: 'comics#new'})
  match('comics/:id', {via: :get, to: 'comics#show'})
  match('comics/:id/edit', {via: :get, to: 'comics#edit'})
  match('comics/:id', {via: [:patch, :put], to: 'comics#update'})
  match('comics/:id', {via: :delete, to: 'comics#destroy'})
end
