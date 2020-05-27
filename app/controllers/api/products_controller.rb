class Api::ProductsController < ApplicationController

  def all_products
    @all_products = Product.all
    render "products.json.jb"
  end

  def tomato_seeds
    @tomato_seeds = Product.find_by(name: "tomato seeds")
    render "tomato_seeds.json.jb"
  end

end


