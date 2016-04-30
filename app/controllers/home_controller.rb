class HomeController < ApplicationController
  def index
  	@category = Category.all
  	@subcategory = Subcategory.all
  end
end
