class ReservationsController < ApplicationController
  before_action :set_island

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservations_params)
    @reservation.user = current_user
    @reservation.island = @island
    if @reservation.save
      redirect_to island_path(@island), notice: "Your booking is confirmed"
    else
      render "/islands/show", status: :unprocessable_entity
    end
  end

  private

  def reservations_params
    params.require(:reservation).permit(:start_date, :end_date)
  end

  def set_island
    @island = Island.find(params[:island_id])
  end
end
