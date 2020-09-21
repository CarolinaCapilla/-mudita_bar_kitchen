class OrdersController < ApplicationController
before_action :set_order, only: %i[show edit update destroy]
  def index
    @orders = Order.where(user_id: current_user.id)
    @cart = Cart.find(params[:cart_id])
  end
  def show
    @line_items = @order.cart.line_items #what inside here
  end
  # @booking.kitchen.name
    # if current_user.chef
    #   @booking = Booking.where(user: user)
    # else
    #   @items = Item.all
    # end
  # end
  def new
    @cart = Cart.find(params[:cart_id])
    @orders = Order.new
  end
  def create
    # Cart.new(user: current_user)
    order_params = params.permit(:cart_id).merge(delivery_address: current_user.address, user: current_user)
    @order = Order.create(order_params)
    if @order.save
      redirect_to order_path(@order), alert: "Order successfully created."
    else
      render :new
    end
  end
  def destroy
    @order.destroy
    redirect_to carts_path, alert: "Order successfully destroyed."
  end
  private
  def set_order
    @order = Order.find(params[:id])
  end
  # def order_params
  #   params.permit(:cart_id)
  # end
end
