class ListsController < ApplicationController

  def show
    @list = List.find(params[:id])
    @todos = @list.todos
  end

end
