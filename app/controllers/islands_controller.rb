class IslandsController < ApplicationController
before_action :set_island, only: [:show, :edit]

  def index
    @islands = Island.all
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    if @island.save
      redirect_to island_path(@island)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @island
  end

  def edit
    @island
  end

  def update
    @island.update(island_params)
    redirect_to islands_path
  end

  def destroy
    @island.destroy
    redirect_to islands_path, status: :see_other
  end

  private

  def set_island
    @island = Island.find(params[:id])
  end

  def island_params
    params.require(:island).permit(:name, :size, :description, :price, :photo)
  end
end
