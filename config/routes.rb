Rails.application.routes.draw do
	get 'pages/home'
	root 'pages#home'

	get 'pages/erb_demo'
end
