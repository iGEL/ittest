Ittest::Application.routes.draw do
  root to: "projects#show"
  resources :projects
end
