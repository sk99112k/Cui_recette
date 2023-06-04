class Public::ListsController < ApplicationController

  def new
    @list = List.new
  end
  
  def create
    @list = List.new(list_params)
    if @list.save!
      redirect_to lists_path
    else
      render "new"
    end 
  end 
  
  def index
    @lists = List.all
  end

  def show
  end

  def edit
  end
  
  private
  
  def list_params
    params.require(:list).permit(:ingredient, :supplier, :price, :lot, :unit)
  end 
  
end
