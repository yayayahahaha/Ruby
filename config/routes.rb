Rails.application.routes.draw do
	get 'pages/home'
	root 'pages#home'

	get 'pages/erb_demo'

	get 'pages/render_demo'

	get 'pages/redirect_demo'
end
