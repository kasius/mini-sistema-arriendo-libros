class CreateLibros < ActiveRecord::Migration[5.0]
  def change
    create_table :libros do |t|
      t.string :nombre
      t.string :categoria
      t.string :editorial
      t.string :autor
      t.string :estado

      t.timestamps
    end
  end
end
