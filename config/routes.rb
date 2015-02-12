Rails.application.routes.draw do
=begin
  get 'categories/index'

  get 'categories/show'

  get 'categories/new'

  get 'categories/edit'

  get 'categories/delete'
=end

	resources :categories
	get 'categories/:id/delete' => 'categories#delete', :as => :categories_delete
	#resources can create the following "get" method up there and create some "helper" I'm not sure what is that
	#notice that the "resource's' "

	get 'pages/home'
	root 'pages#home'

	get 'pages/erb_demo'

	get 'pages/render_demo'

	get 'pages/redirect_demo'
end
