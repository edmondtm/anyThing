class HomeController < ApplicationController
  def index
  	@title = "Welcome to anyThing Scientific"
  	@category = Category.all
  	@subcategory = Subcategory.all
  end
end
