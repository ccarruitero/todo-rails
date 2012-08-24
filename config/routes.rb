TodoRails::Application.routes.draw do
  resources :tasks do
    put 'finish', on: :member
  end

  root to: 'tasks#index'
end
