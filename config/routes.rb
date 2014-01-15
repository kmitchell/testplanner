Testplanner::Application.routes.draw do
  resources :test_plans
  root :to => 'test_plans#index'
end
