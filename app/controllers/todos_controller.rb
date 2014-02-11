class TodosController < ActionController::Base

	def index
		@todos = Todo.all
	end

	def new
		@todo = Todo.new()
	end

	def create
		title_param = params[:todo].permit(:title)
		@todo = Todo.create(title_param)
		redirect todo_path
	end

	def show
	end


end