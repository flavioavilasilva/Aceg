class CreateEnderecoFeiraAdocoes < ActiveRecord::Migration
  def change
    create_table :endereco_feira_adocoes do |t|
      t.string :cep
      t.integer :estado_id
      t.integer :cidade_id
      t.string :numero
      t.integer :feira_adocao_id
      t.string :rua

      t.timestamps
    end
  end
end
