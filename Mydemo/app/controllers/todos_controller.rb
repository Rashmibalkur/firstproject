class TodosController < ApplicationController


	def index
		@todos = Todo.all
	end

	def new

	end
.

	def create
		todo = Todo.new
		todo.name = params[:todo][:name]
		todo.description = params[:todo][:description]
		if todo.save
			redirect_to "/todos"
		else
			redirect_to "/todos/new"
		end
	end

end