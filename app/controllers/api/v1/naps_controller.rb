class Api::V1::NapsController < ApplicationController
  before_action :set_nap, only: [:show, :update, :destroy]
  skip_before_action :authorized

  # GET /naps
  def index
    @naps = Nap.all

    render json: @naps
  end

  # GET /naps/1
  def show
    render json: @nap
  end

  # POST /naps
  def create
    @nap = Nap.new(nap_params)

    if @nap.save
      render json: @nap, status: :created
      # location: api_v1_nap_url(@nap)
    else
      render json: @nap.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /naps/1
  def update
    if @nap.update(nap_params)
      render json: @nap
    else
      render json: @nap.errors, status: :unprocessable_entity
    end
  end

  # DELETE /naps/1
  def destroy
    @nap.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nap
      @nap = Nap.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nap_params
      params.permit(:child_id, :duration)
    end
end
