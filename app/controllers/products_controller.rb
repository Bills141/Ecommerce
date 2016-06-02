class ProductsController < ApplicationController
 before_action :set_products, only: [:show, :edit, :update]		    
	
	def index
		@product = Product.all
	end
	
	def show
		#authorize! :update, @product 
	end

	def new
		@product = Product.new
		
	end

	def create
		@user = current_user
		@product =@user.products.create(productparams)
		if @product.save
			redirect_to products_path
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		
		if @product.update_attributes(productparams)
			 redirect_to products_path
		else
			render 'new'
		end
	end

	def destroy
  	@product = Product.find_by_id(params[:id]).destroy	
  		redirect_to products_path
	end

	def set_products
		@product = Product.find_by_id(params[:id])
	end

	def productparams
		params.require(:product).permit(:name,:image,:prize,category_ids:[])
	end

end
