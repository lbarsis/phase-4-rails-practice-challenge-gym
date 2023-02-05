class MembershipsController < ApplicationController
rescue_from ActiveRecord::RecordNotUnique, with: :record_not_unique
  def create
    membership = Membership.create!(membership_params)
    render json: membership, status: :ok
  end

  private

  def membership_params
    params.permit(:charge, :gym_id, :client_id)
  end

  def record_not_unique
    render json: {error: "Membership already exists"}, status: :unprocessable_entity
  end

end
