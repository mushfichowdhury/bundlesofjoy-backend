class DiapersController < ApplicationController
  before_action :set_diaper, only: [:show, :update, :destroy]

  # GET /diapers
  def index
    @diapers = Diaper.all

    render json: @diapers
  end

  # GET /diapers/1
  def show
    render json: @diaper
  end

  # POST /diapers
  def create
    @diaper = Diaper.new(diaper_params)

    if @diaper.save
      render json: @diaper, status: :created, location: @diaper
    else
      render json: @diaper.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /diapers/1
  def update
    if @diaper.update(diaper_params)
      render json: @diaper
    else
      render json: @diaper.errors, status: :unprocessable_entity
    end
  end

  # DELETE /diapers/1
  def destroy
    @diaper.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diaper
      @diaper = Diaper.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def diaper_params
      params.require(:diaper).permit(:child_id, :wet, :solid, :color)
    end
end
