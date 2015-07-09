class CreateEnderecoOfertaVoluntariado < ActiveRecord::Migration
  def change
    create_table :endereco_oferta_voluntariado do |t|
      t.string :rua
      t.string :numero
      t.string :cep
      t.integer :estado_id
      t.integer :cidade_id
      t.integer :oferta_voluntariado_id

      t.timestamps
    end
  end
end
