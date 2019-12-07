Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post "coffee/" => "coffee#create"
  get "coffee/" => "coffee#index"
  get "coffee/last" => "coffee#last"
  get "coffee/analysis" => "coffee#coffee_analysis"
end
