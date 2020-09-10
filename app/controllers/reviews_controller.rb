class ReviewsController < ApplicationController
  def new
    @kitchen = Kitchen.find(params[:kitchen_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @kitchen = Kitchen.find(params[:kitchen_id])
    @review.kitchen = @kitchen
    @review.user = current_user
    if @review.save
      redirect_to kitchen_path(@kitchen)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

