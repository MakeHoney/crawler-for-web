require 'crawl'
class HomeController < ApplicationController
	
	def index
		render 'index.html.erb'
	end

	def crawl
		@crawler = Crawl::SchoolFood.new()
		@str = @crawler.dormFoodCourt
	end
end
