class PagesController < ApplicationController
	def home
	end

	def erb_demo
	end
	
	def render_demo
		render :home
	end

	def redirect_demo
		redirect_to(action: 'home')
	end
end
