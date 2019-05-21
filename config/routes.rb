RedmineApp::Application.routes.draw do
  resources :services do
    collection do
      get 'catalog'
    end
  end
  resources :service_categories
end
