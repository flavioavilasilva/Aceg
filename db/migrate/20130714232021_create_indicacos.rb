class CreateIndicacos < ActiveRecord::Migration
  def change
    create_table :indicacos do |t|
      t.integer :estabelecimento_id
      t.string :comentario
      t.integer :nota
      t.integer :usuario_id

      t.timestamps
    end
  end
end
