class KitchensController < ApplicationController
  before_action :set_kitchen, only: %i[show edit update destroy]

  def index
    @kitchens = Kitchen.where(user_id: current_user.id)
  end

  def show
    @reviews = Review.where(kitchen_id: @kitchen.id)
  end

  def new
    @kitchen = Kitchen.new
  end

  def create
    @kitchen = Kitchen.new(kitchen_params)
    @kitchen.user = current_user
    if @kitchen.save
      redirect_to kitchen_path(@kitchen), notice: "Kitchen successfully created."
    else
      render :new
    end
  end

  def edit; end

  def update
    @kitchen.update(kitchen_params)
    if @kitchen.save
      redirect_to kitchen_path(@kitchen), notice: "Your kitchen was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @kitchen.destroy
    redirect_to kitchens_path, notice: "Booking successfully destroyed."
  end

  private

  def set_kitchen
    @kitchen = Kitchen.find(params[:id])
  end

  def kitchen_params
    params.require(:kitchen).permit(:name, :cuisine)
  end
end
