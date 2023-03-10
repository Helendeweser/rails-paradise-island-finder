class IslandsController < ApplicationController
  before_action :set_island, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR address ILIKE :query"
      @islands = Island.where(sql_query, query: "%#{params[:query]}%")
    else
      @islands = Island.all
    end

    @markers = @islands.geocoded.map do |island|
      {
        lat: island.latitude,
        lng: island.longitude,
        window_html: render_to_string(partial: "window", locals: {island: island})
      }
    end
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    @island.user = current_user
    if @island.save
      redirect_to island_path(@island)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @markers = [{
      lat: @island.latitude,
      lng: @island.longitude,
      window_html: render_to_string(partial: "window", locals: { island: @island })
    }]
    @reservation = Reservation.new
  end

  def edit
    @island
  end

  def update
    @island.update(island_params)
    redirect_to island_path(params[:id])
  end

  def destroy
    @island.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def set_island
    @island = Island.find(params[:id])
  end

  def island_params
    params.require(:island).permit(:name, :size, :description, :price, :photo, :address)
  end
end
