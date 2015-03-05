class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find params[:id]
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    if @product.save
      redirect_to :action => 'index'
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    @product = Product.find params[:id]
    if @product.update_attributes product_params
      redirect_to :action => 'show', :id => @product.id
    else
      render 'index'
    end
    
  end

  def delete
    @product = Product.find params[:id]
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to :action => 'index'
    
  end

  private
  def product_params
    params.require(:product).permit(:product_name, :description, :price, :url)
  end
end
