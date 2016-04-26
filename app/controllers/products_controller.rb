class ProductsController < ApplicationController
  

  def categories
  end

  def index
    @categories = Products.all
    @subcategories = Products.all
    @search = Products.all
  end

  def show
    add_breadcrumb "Home", root_path
    add_breadcrumb "Glasswares", products_categories_path
    add_breadcrumb "Back to results", products_results_path
  end

  def results
  end

  def create
  end

  def update
  end

  def delete
  end

  def index
  end
end



  

