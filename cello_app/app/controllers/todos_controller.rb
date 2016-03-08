class TodosController < ApplicationController

  def new
    @todo = Todo.new
  end

  def create
  @todo = Todo.new
  @todo.item = params["todo"]["item"]
  @todo.list_id = params["todo"]["list_id"]
  @todo.save
    #
    redirect_to '/lists'

  end
end
