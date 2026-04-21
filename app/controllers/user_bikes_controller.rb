class UserBikesController < ApplicationController
  before_action :set_user_bike, only: %i[ show update destroy ]

  # GET /user_bikes
  def index
    @user_bikes = UserBike.all

    render json: @user_bikes
  end

  # GET /user_bikes/1
  def show
    render json: @user_bike
  end

  # POST /user_bikes
  def create
    @user_bike = UserBike.new(user_bike_params)

    if @user_bike.save
      render json: @user_bike, status: :created, location: @user_bike
    else
      render json: @user_bike.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /user_bikes/1
  def update
    if @user_bike.update(user_bike_params)
      render json: @user_bike
    else
      render json: @user_bike.errors, status: :unprocessable_content
    end
  end

  # DELETE /user_bikes/1
  def destroy
    @user_bike.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_bike
      @user_bike = UserBike.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def user_bike_params
      params.expect(user_bike: [ :user_id, :bike_id, :\ ])
    end
end
