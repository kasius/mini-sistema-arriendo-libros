class LibrosController < ApplicationController
	
	$idBook = 0


	def index
		@libros = Libro.all
	end

	def new
		@libro = Libro.new
	end

	def create
		@libro = Libro.new(libro_params)

		@libro.save
		redirect_to action: "index"
	end

	def libro_params
		params.require(:libro).permit(:nombre, :categoria, :estado, :editorial, :autor)
	end
	
	def arrendar
		@libro = Libro.find(params[:id])
		@libro.update_attribute :estado, 'Arrendado'
		@arriendo = Arriendo.new
@arriendo.folio = @libro.id
		@arriendo = @libro

	end

	def edit 
		@libro = Libro.find params[:id]
	end

	def destroy
		@libro = Libro.find(params[:id]);
		if @libro.destroy()
			redirect_to :action => "index";
		else
			# manejar el fallo
		end
	end

	def update
		@libro = Libro.find(params[:id])

		if @libro.update(libro_params)
			redirect_to action: "index"
		else
			# seguir en edit
		end
	end

	def updateEstado
		@libro = Libro.find(params[:id])
		@libro.estado = "Arrendado"

		if @libro.update(libro_params)
			redirect_to action: "index"
		else
			# seguir en edit
		end
	end

	def newarriendo
		@arriendo = Arriendo.new(arriendo_params)
		print "Porfavor ingrese un nombre: "
nombre = gets
puts "Hola #{nombre}"
		puts @arriendo
		@arriendo.save
		redirect_to action: "index"
	end

	def arriendo_params
		params.require(:arriendo).permit(:idBook, :nombre, :username, :lastname, :valor, :entrega)
	end

end

