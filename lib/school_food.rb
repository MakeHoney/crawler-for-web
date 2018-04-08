require 'open-uri'

class SchoolFood
	@html; @page

	def initialize 
		@url = 'http://www.ajou.ac.kr/kr/life/food.jsp'
		@html = open(@url).read
		# @html = HTTP.get('http://www.ajou.ac.kr/kr/life/food.jsp').to_s
		@html = fixHtml(@html)
		@page = Nokogiri::HTML(@html)
	end

	def fixHtml(html)
		html.gsub!(/<[가-힣]/) {|s| s = '&lt;' + s[1]}
		html.gsub!(/[가-힣]>/) {|s| s = s[0] + '&gt;'}
	end
	
	def studentFoodCourt
		@page.css('table.ajou_table')[0].css('td.no_right li').each do |li|
			puts li.text
		end	
	end


	def dormFoodCourt
		retStr =""
		time = ['아침', '점심', '저녁']

		3.times do |i|
			retStr += "<p><li>******** #{time[i]} ********</li></p>"
			@page.css('table.ajou_table')[1].
			css('td.no_right')[i + 1].		# 아침 점심 저녁 선택자

			css('li').each do |li|
				retStr += "<li>#{li.text}</li>"
			end	
		end
		return fixHtml(retStr)
	end


	def wholeList
		page.css('table.ajou_table li').each do |li|
		puts li.text
		end		
	end
end