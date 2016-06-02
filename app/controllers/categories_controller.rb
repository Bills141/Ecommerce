class CategoriesController < ApplicationController
	before_filter :authenticate_user!
	before_action :set_category_id, only: [:show]
 
	def index
		@categorys = Category.all
	end

	def show
	  @category= Category.find_by_id(params[:id])
	  
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.create(category_params)
		if @category.save
			redirect_to products_path
		else
			render 'new'
		end
	end

	def set_category_id
		@category = Category.find_by_id(params[:id])
	end

	def category_params
		params.require(:category).permit(:name)
	end

end
