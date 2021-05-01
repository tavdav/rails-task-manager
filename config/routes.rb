Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # CRUD
  # Create, Read, Update, Delete
  # verb 'path', to: 'controller#action'
  # Read all the tasks
  get '/tasks', to: 'tasks#index'
  # Create a task
  get '/tasks/new', to: 'tasks#new'
  # Read one task
  get '/tasks/:id', to: 'tasks#show', as: :task
  # Create a task
  post '/tasks', to: 'tasks#create'
  # Update a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'
  # Delete a task
  delete '/tasks/:id', to: 'tasks#destroy', as: :delete_task
end
