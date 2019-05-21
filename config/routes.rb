# Rotas da aplicacao
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Read the tasks
  root to: 'tasks#index' # lista as tasks, obrigatorio chamar alias de tasks
  get 'tasks', to: 'tasks#index', as: 'tasks' # lista as tasks

  # Create
  get 'tasks/new', to: 'tasks#new', as: 'new_task' #
  post 'tasks', to: 'tasks#create'

  # Show detail - Necessita estar depois da rota do NEW
  get 'tasks/:id', to: 'tasks#show', as: 'task' # uma task
  patch 'tasks/:id', to: 'tasks#update'
  # Delete
  delete 'tasks/:id', to: 'tasks#destroy' # uma task

  # Update
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

end
