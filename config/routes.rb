TodoWithRspec::Application.routes.draw do

	root 'todos#index'
	get '/todos', to: "todos#index", as: :todos
	post '/todos', to: "todos#create", as: :create
	get '/todos/:id/show', to: "todos#show", as: :todo
	get '/todos/new', to: "todos#new", as: :new_todo
	



	get "/todos/new", to: "todos#new", as: "new_todo"
	post "/todos", to: "todos#create"

end


# d   Prefix Verb   URI Pattern               Controller#Action
#     todos GET    /todos(.:format)          todos#index
#           GET    /todos(.:format)          todos#index
#           POST   /todos(.:format)          todos#create
#  new_todo GET    /todos/new(.:format)      todos#new
# edit_todo GET    /todos/:id/edit(.:format) todos#edit
#      todo GET    /todos/:id(.:format)      todos#show
#           PATCH  /todos/:id(.:format)      todos#update
#           PUT    /todos/:id(.:format)      todos#update
#           DELETE /todos/:id(.:format)      todos#destroy
