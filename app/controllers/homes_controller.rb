class HomesController < ApplicationController
  def index
    
  end

  def show
    @list = List.find(params[:id])
  end

  def new
  end

  def edit
  end
  
  def top
  end
  
end
