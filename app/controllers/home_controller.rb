class HomeController < ApplicationController
	def index
		render 'index.html.erb'
	end

	def crawl
		@crawler = SchoolFood.new()
		@str = @crawler.dormFoodCourt
	end


end
