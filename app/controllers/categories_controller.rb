class CategoriesController < ApplicationController
  def index
		@categories = Category.all
		#to show more than one data(that's the reason of 's'), get them from model Categroy.all
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
	def category_params
		params.require(:category).permit(:name, :url)
	end
	#require model "cateogry" to get :name and url data?
end
