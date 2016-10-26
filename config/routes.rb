Rails.application.routes.draw do

  #get 'arriendos/index'

	resources :libros
	resources :arriendos

	get 'libros/arrendar/:id' => 'libros#arrendar'
	post 'libros/arriendo' => 'libros#newarriendo'
	get 'libros/updateEstado/:id' => 'libros#updateEstado'

end
