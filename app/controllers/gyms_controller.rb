class GymsController < ApplicationController
  def show
    gym = Gym.find(params[:id])
    render json: gym, status: :ok
  end

  def destroy
    gym = Gym.find(params[:id])
    gym.destroy!
    render json: {message: "Gym Destroyed!"}, status: :deleted
  end
end
