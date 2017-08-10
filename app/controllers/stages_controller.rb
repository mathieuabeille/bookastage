class StagesController < ApplicationController
  def index
    @city = params[:city]
    @date = params[:date]
    @stages = Stage.where("city ILIKE ?","%#{params[:city]}%").where.not(latitude: nil, longitude: nil)
    # @stages = Stage.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@stages) do |stage, marker|
      marker.lat stage.latitude
      marker.lng stage.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def new
    @stage = Stage.new
  end

  def create
    @stage = Stage.new(stage_params)
    @stage.user = current_user
    if @stage.save
      redirect_to stage_path(@stage)
    else
      render new
    end
  end

   def edit
    @stage = Stage.find(params[:id])
  end

  def update
    @stage = Stage.find(params[:id])
    @stage.user = current_user
    if @stage.save
      redirect_to stage_path(@stage)
    else
      render new
    end
  end

  # GET /stages/:id
  def show
    @stage = Stage.find(params[:id])
    @date = params[:date]
    @booking = Booking.new(date: @date)
  end

  private

  def stage_params
    params.require(:stage).permit(:name, :city, :description, :capacity, :price, :address)
  end
end
