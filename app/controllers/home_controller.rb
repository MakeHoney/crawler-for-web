class HomeController < ApplicationController
	
	def index
		render 'index.html.erb'
	end

	def crawl
		@crawler = SchoolFood.new()
		@str = @crawler.dormFoodCourt

		# @str2 = TEST.new()
		# @str3 = @str2.putsOne
	end


end
