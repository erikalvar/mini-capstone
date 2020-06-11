class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all 
    if params[:name]
      @products = Product.where("name iLike ?", "#{params[:name]}")
    end
    if params[:discount] == "yes"
      @products = Product.where("price < ?", 10.0)
    end
    if params[:sort] == "lowest_to_highest"
      @products = Product.order(:price)
    end
    if params[:sort] == "highest_to_lowest"
      @products = Product.order(price: :desc)
    end
    #@products = @products.order(:id)
    render "index.json.jb"
  end

  def show
    @product = Product.find(params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      in_stock: params[:in_stock],
      supplier_id: params[:supplier_id]
    )
    if @product.save #happy path
      render "show.json.jb"   
    else #sad path
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end 
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.in_stock = params[:in_stock] || @product.in_stock
    if @product.save
      render "show.json.jb"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Recipe destoyed."}
  end

end