class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @todos = @list.todos
  end

  def new
    @list = List.new
  end

  def create
  @list = List.new
  @list.name = params["list"]["name"]
  @list.save

    redirect_to '/lists'
  end

    def destroy
    @list = List.find(params[:id])
    @list.destroy

    redirect_to '/lists'
  end

end
