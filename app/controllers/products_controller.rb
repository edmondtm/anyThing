class ProductsController < ApplicationController
    
  def index
    @search = Product.search do
      fulltext params[:search]
    end 

    
    @product = @search.results 

  end

  def show
    add_breadcrumb "Home", root_path
    add_breadcrumb "Glasswares", "#"
    add_breadcrumb "Back to results", "#"


  end

  def create
  end

  def update
  end

  def delete
  end

  
end



  

