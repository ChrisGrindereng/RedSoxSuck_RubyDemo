Rails.application.routes.draw do
  # get 'teams', to: 'teams#index', as: 'teams'
  #
  # get 'teams/:id', to: 'teams#show', as: 'team'
  #
  # get 'team/new', to: 'teams#new', as: 'new_team'
  #
  # post 'teams', to: 'teams#create'
  #
  # get 'teams/:id/edit', to: 'teams#edit', as: 'edit_team'
  #
  # patch 'teams/:id', to: 'teams#update'

  resources :teams

  root 'teams#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
