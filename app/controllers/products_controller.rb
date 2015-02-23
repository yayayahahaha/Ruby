class ProductsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end

  private
  def product_params
    params.require(:product).permit(:product_name, :description, :price, :url)
  end
end
