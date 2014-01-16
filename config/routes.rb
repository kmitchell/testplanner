Testplanner::Application.routes.draw do
  resources :features do
    resources :test_plans
  end
  root :to => 'features#index'
end
