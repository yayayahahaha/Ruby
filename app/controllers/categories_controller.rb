class CategoriesController < ApplicationController
  def index
		@categories = Category.all
		#to show more than one data(that's the reason of 's'), get them from model Categroy.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to(action: 'index')
    else
      render('new')
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find params[:id]
    if @category.update_attributes(category_params)
      redirect_to(action: 'show', id: @category.id)
    else
      render 'index'
    end
  end

  def delete
  end

	private
	def category_params
		params.require(:category).permit(:name, :url)
	end
	#require model "cateogry" to get :name and url data?
end
