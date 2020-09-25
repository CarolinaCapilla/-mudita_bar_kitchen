class KitchensController < ApplicationController
  before_action :set_kitchen, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!



  def index
    @kitchens = Kitchen.all
  end

  def show
    @items = Item.where(kitchen_id: @kitchen.id)
    @reviews = Review.where(kitchen_id: @kitchen.id)
  end

  def new
    @kitchen = Kitchen.new
  end

  def create
    @kitchen = Kitchen.new(kitchen_params)
    @kitchen.user = current_user
    if @kitchen.save
      redirect_to new_kitchen_item_path(@kitchen), alert: 'Welcome, to The Menu!'
    else
      render :new
    end
  end

  def edit; end

  def update
    @kitchen.update(kitchen_params)
    if @kitchen.save
      redirect_to kitchen_path(@kitchen), alert: 'Your kitchen was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @kitchen.destroy
    redirect_to kitchens_path, alert: 'Kitchen successfully destroyed.'
  end

  private

  def set_kitchen
    @kitchen = Kitchen.find(params[:id])
  end

  def kitchen_params
    params.require(:kitchen).permit(:name, :cuisine, :photo)
  end
end
