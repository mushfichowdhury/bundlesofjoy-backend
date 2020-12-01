class Api::V1::FeedingsController < ApplicationController
    before_action :set_feeding, only: [:show, :update, :destroy]
    skip_before_action :authorized


    # GET /feedings
    def index
        @feedings = Feeding.all

        render json: @feedings
    end

    # GET /feedings/1
    def show
        render json: @feeding
    end

    # POST /feedings
    def create
        @feeding = Feeding.new(feeding_params)

        if @feeding.save
        render json: @feeding, status: :created
        else
        render json: @feeding.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /feedings/1
    def update
        if @feeding.update(feeding_params)
        render json: @feeding
        else
        render json: @feeding.errors, status: :unprocessable_entity
        end
    end

    # DELETE /feedings/1
    def destroy
        @feeding.destroy
    end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_feeding
        @feeding = Feeding.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def feeding_params
        params.permit(:child_id, :feeding_method, :food, :amount)
        end
end
