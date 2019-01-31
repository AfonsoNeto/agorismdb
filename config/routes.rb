Rails.application.routes.draw do
  root to: 'resources#index'

  resources :resources, only: [:index, :show] do
    get :search, on: :collection, constraints: {format: :js}
  end
end
