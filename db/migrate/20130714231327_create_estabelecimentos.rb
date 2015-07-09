class CreateEstabelecimentos < ActiveRecord::Migration
  def change
    create_table :estabelecimentos do |t|
      t.string :estabelecimento
      t.integer :tipo_servico_id
      t.integer :estado_id
      t.integer :cidade_id
      t.integer :bairro_id
      t.string :rua
      t.string :numero_rua
      t.string :telefone
      t.string :descricao_servico

      t.timestamps
    end
  end
end
