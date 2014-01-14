Testplanner::Application.routes.draw do
  root :to => 'test_plans#index'

  resources :categories
  resources :test_plans do
    resources :test_cases
  end
end
