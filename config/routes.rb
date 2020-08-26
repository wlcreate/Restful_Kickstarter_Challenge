Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/projects", to: "projects#index", as: "projects" #all of the projects
  get "/projects/new", to: "projects#new", as: "new_project" #sends to user form to create a new project
  post "/projects", to: "projects#create" #actually creates a project
  get "/projects/:id", to: "projects#show", as: "project" #displays a specific project
  get '/projects/:id/edit', to: 'projects#edit', as: 'edit_project' #send to user form to edit a specific project
  patch '/projects/:id', to: 'projects#update' #actually updates a specific project
  delete '/projects/:id', to: 'projects#destroy' #deletes a specific project

end
