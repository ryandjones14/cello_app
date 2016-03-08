class TodosController < ApplicationController

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new
    @todo.item = params["todo"]["item"]
    @todo.list_id = params["todo"]["list_id"]
    @todo.save

    redirect_to '/lists'
  end

  def delete
    @todo = Todo.find(params["id"])
    @todo.destroy

    redirect_to '/lists'
  end

end
