class ApplicationController < ActionController::Base
    def index 
        @todos = Todo.all
    end 
    def new 
        @todo = Todo.new
    end 
    def create 
        @todo = Todo.new(todo_params)
        @todo.save
        redirect_to root_path
    end 
    def show 
        @todo = Todo.find(params[:id])
    end 
    def edit 
        @todo = Todo.find(params[:id])
    end 
    def update 
        @todo = Todo.find(params[:id])
        @todo.update(todo_params)
        redirect_to root_path
    end 
    def destroy 
        @todo = Todo.find(params[:id])
        @todo.destroy
        redirect_to root_path
    end 
    def complete
        @todo = Todo.find(params[:id])
        @todo.completed = true 
        @todo.save
        redirect_to root_path
    end 
    def list        
        @completed = Todo.where(completed: true)
        @not_completed = Todo.where(completed: false)
    end 

    private
    def todo_params
        params.require(:todo).permit(:description)
    end


end
