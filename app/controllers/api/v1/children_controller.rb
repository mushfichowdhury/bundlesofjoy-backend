class Api::V1::ChildrenController < ApplicationController
  # before_action :set_child, only: [:show, :update, :destroy]
  skip_before_action :authorized


  # GET /children
  def index
    @children = Child.all

    render json: @children
  end

  def profile
    render json: { user: current_user }, status: :accepted
  end

  # GET /children/1
  def show
    @child = Child.find(params[:id])
    render json: @child, serializer: ChildSerializer
  end

  # POST /children
  # def create
  #   @child = Child.new(child_params)

  #   if @child.save
  #     render json: @child, status: :created, location: @child
  #   else
  #     render json: @child.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /children/1
  # def update
  #   if @child.update(child_params)
  #     render json: @child
  #   else
  #     render json: @child.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /children/1
  def destroy
    @child.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_child
    #   @child = Child.find(params[:id])
    # end

    # Only allow a trusted parameter "white list" through.
    # def child_params
    #   params.require(:child).permit(:user_id, :name, :birthday, :age, :password)
    # end
end
