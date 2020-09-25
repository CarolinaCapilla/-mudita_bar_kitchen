class CartsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
  before_action :set_cart, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!

  def index
    @carts = Cart.all
  end

  def show; end

  def new
    @cart = Cart.new
  end

  def edit; end

  def create
    @cart = Cart.new(cart_params)
    if @cart.save
      redirect_to @cart, alert: 'Cart was successfully created.'
    else
      render :new
    end
  end

  def update
    if @cart.update(cart_params)
      redirect_to @cart, alert: 'Cart was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @cart.destroy if @cart_id == session[:cart_id]
    session[:cart_id] = nil
    redirect_to root_path, alert: 'Your cart is empty!'
  end

  private

  def set_cart
    @cart = Cart.find(params[:id])
  end

  def cart_params
    params.fetch(:cart, {})
  end

  def invalid_cart
    logger.error "Attempt to access invalid cart #{params[:id]}"
    redirect_to root_path, alert: "That cart doesn't exit"
  end
end
