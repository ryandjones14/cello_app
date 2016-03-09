class TodosController < ApplicationController

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
    @list =  List.find(params[:list])

  end

  def create
    @todo = Todo.new
    @todo.item = params["todo"]["item"]
    @todo.list_id = params["todo"]["list_id"]

    @todo.save

    redirect_to @todo.list
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to '/lists'
  end


end
