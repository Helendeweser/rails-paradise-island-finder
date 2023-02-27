class IslandsController < ApplicationController
before_action :set_island, only: [:show]

  def index
    @islands = Island.all
  end

  def new

  end

  def show
    @island
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_island
    @island = Island.find(params[:id])
  end
end
