class CreateIndicacoes < ActiveRecord::Migration
  def change
    create_table :indicacoes do |t|
      t.integer :estabelecimento_id
      t.string :comentario
      t.float :nota
      t.string :usuario_id

      t.timestamps
    end
  end
end
