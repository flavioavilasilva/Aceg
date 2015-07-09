class CreateComentarioArtigos < ActiveRecord::Migration
  def change
    create_table :comentario_artigos do |t|
      t.string :autor
      t.text :conteudo
      t.references :artigo

      t.timestamps
    end
    add_index :comentario_artigos, :artigo_id
  end
end
