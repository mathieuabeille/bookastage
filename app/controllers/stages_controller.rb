class StagesController < ApplicationController
  def index
    @stages = Stage.all
  end

  def new
    @stage = Stage.new
  end

  # GET /stages/:id
  def show
    @stage = Stage.find(params[:id])
  end
end
