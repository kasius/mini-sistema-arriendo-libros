class CreateArriendos < ActiveRecord::Migration[5.0]
  def change
    create_table :arriendos do |t|
      t.integer :idBook
      t.string :nombre
      t.string :username
      t.string :lastname
      t.string :valor
      t.string :entrega
      t.integer :folio

      t.timestamps
    end
  end
end
