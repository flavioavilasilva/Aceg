class CreatePerfis < ActiveRecord::Migration
  def change
    create_table :perfis do |t|
      t.string :descricao
      t.integer :endereco_perfil_id
      t.string :telefone
      t.datetime :data_nascimento
      t.string :cpf
      t.integer :usuario_id

      t.timestamps
    end
  end
end
