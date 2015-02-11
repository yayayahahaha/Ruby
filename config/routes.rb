Rails.application.routes.draw do
  get 'categories/index'

  get 'categories/show'

  get 'categories/new'

  get 'categories/edit'

  get 'categories/delete'

	get 'pages/home'
	root 'pages#home'

	get 'pages/erb_demo'

	get 'pages/render_demo'

	get 'pages/redirect_demo'
end
