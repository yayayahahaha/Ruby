class PagesController < ApplicationController
	def home
	end

	def erb_demo
	end
	
	def render_demo
		render :home
	end
end
