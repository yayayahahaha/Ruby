Rails.application.routes.draw do
	get 'pages/home'
	root 'pages#home'

	get 'pages/erb_demo'

	get 'pages/render_demo'
end
