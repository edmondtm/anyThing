class ProductsController < ApplicationController
    
  def index
    @search = Product.search do
      fulltext params[:search] do
        query_phrase_slop 2
      end
      facet (:product_brand)
      with(:product_brand,params[:product_brand]) if params[:product_brand].present?
      facet (:vendor_id)
      with(:vendor_id,params[:vendor_id]) if params[:vendor_id].present?
      facet (:category_id)
      with(:category_id,params[:category_id]) if params[:category_id].present?
      facet (:subcategory_id) 
      with(:subcategory_id,params[:subcategory_id]) if params[:subcategory_id].present?
      facet (:product_delivery)
      with(:product_delivery,params[:product_delivery]) if params[:product_delivery].present?
      paginate :page => 1, :per_page => 12
    end 

    @product = @search.results
    @category = Category.all 
    @subcategory = Subcategory.all 

  end

  def show
    @product = Product.find(params[:id])
    @category = Category.find(@product.category_id).category_name.pluralize.titleize
    @variation = @product.variations.all
    @order = Order.create

    add_breadcrumb "Home", root_path
    add_breadcrumb @category, products_path
    add_breadcrumb "Back to results", "#"




  end

  def create
  end

  def update
  end

  def delete
  end

  
end



  

