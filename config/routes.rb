Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos/new', as: 'new'
  post 'todos', to: 'todos#create', as: 'create'
  get 'todos/list', as: 'list'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  get 'todos/:id/edit', to: 'todos#edit', as: 'edit'
  patch 'todos/:id', to: 'todos#update', as: 'update'
  delete 'todos/:id', to: 'todos#destroy', as: 'delete'
  patch 'todos/:id/complete', to: 'todos#complete', as: 'complete'



 root 'todos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
