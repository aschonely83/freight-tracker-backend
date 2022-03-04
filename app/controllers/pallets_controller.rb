class PalletsController < ApplicationController
  before_action :set_pallet, only: [:show, :update, :destroy]

  # GET /pallets
  def index
    @pallets = Pallet.all

    render json: @pallets
  end

  # GET /pallets/1
  def show
    render json: @pallet
  end

  # POST /pallets
  def create
    @pallet = Pallet.new(pallet_params)

    if @pallet.save
      render json: @pallet, status: :created, location: @pallet
    else
      render json: @pallet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pallets/1
  def update
    if @pallet.update(pallet_params)
      render json: @pallet
    else
      render json: @pallet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pallets/1
  def destroy
    @pallet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pallet
      @pallet = Pallet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pallet_params
      params.require(:pallet).permit(:date, :scheduled, :picked_up, :user_id, :carrier_id)
    end
end
