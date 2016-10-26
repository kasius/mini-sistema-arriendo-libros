class ArriendosController < ApplicationController
  def index
  	@arriendos = Arriendo.all
  end

  def destroy
		arriendo = Arriendo.find(params[:id]);
		libro = Libro.find(arriendo.idBook)
		libro.update_attribute :estado, 'Disponible'
		if arriendo.destroy()
			redirect_to :action => "index";
		else
			# manejar el fallo
		end
	end
end
