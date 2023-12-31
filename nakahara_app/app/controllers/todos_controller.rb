class TodosController < ApplicationController
  before_action :set_todo, only: [:edit, :update, :destroy]

  def index
      @todos = Todo.order(updated_at: :desc) 
      render :index
  end
  
  def new
      @todo = Todo.new
  end

  def create
      @todo = Todo.new(todo_params)

      if @todo.save
          redirect_to todos_path
      else 
          render :new
      end
  end

  def edit
      @todo = Todo.find(params[:id])
  end

  def update
      @todo = Todo.find(params[:id])
      if @todo.update(todo_params)
          redirect_to todos_path
      else 
          render :edit
      end
  end

  def destroy 
    @todo = Todo.find(params[:id])
      @todo.destroy
      redirect_to todos_path
  end

  private

  def todo_params
      params.require(:todo).permit(:title, :is_completed)
  end

  def set_todo
      @todo = Todo.find(params[:id])
  end
end