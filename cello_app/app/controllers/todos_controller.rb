class TodosController < ApplicationController

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
    @list_id = @todo.list_id
  end

  def create
    @todo = Todo.new
    @todo.item = params["todo"]["item"]
    @todo.list_id = params["todo"]["list_id"]
    @todo.save

    redirect_to '/lists'
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to '/lists'
  end


end
