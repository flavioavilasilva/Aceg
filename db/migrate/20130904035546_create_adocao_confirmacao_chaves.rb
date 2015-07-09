class CreateAdocaoConfirmacaoChaves < ActiveRecord::Migration
  def change
    create_table :adocao_confirmacao_chaves do |t|
      t.string :key
      t.integer :dias_validade
      t.datetime :data_criacao
      t.binary :chave_valida

      t.timestamps
    end
  end
end
