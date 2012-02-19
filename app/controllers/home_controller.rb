class HomeController < ApplicationController
	def index
		group = Spree::ProductGroup.find_by_name "hot products"
		@hot_products = group.products
	end
end
