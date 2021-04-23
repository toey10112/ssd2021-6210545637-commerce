class HomeController < ApplicationController
  def index
    
    @search = params[:search]
    @products = Product.all
    @products = @products.search(@search) if @search.present?
    
  end
    # GET /products/1 or /products/1.json
  def show
  end
end
