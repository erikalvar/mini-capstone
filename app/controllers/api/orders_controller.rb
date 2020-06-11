class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def create
    @order = Order.new(
      {user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: product.price * params[:quantity],
      tax: product.price * params[:quantity] * 0.09,
      total: (product.price * params[:quantity]) + (product.price * params[:quantity] * 0.09)}
    )
    if @order.save
      render json: {message: @order}
    else 
      render json: { errors: order.errors.full_messages }, status: :bad_request
    end
  end

end
