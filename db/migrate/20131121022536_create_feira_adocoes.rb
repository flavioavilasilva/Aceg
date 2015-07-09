class CreateFeiraAdocoes < ActiveRecord::Migration
  def change
    create_table :feira_adocoes do |t|
      t.integer :usuario_id
      t.string :nome
      t.text :descricao
      t.integer :endereco_feira_adocao_id
      t.datetime :inicio_feira
      t.datetime :fim_feira

      t.timestamps
    end
  end
end
