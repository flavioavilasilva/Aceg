class CreateConfirmacaoAdocoes < ActiveRecord::Migration
  def change
    create_table :confirmacao_adocoes do |t|
      t.integer :adocao_animal_id
      t.integer :status_confirmacao_adotando_id
      t.integer :status_confirmacao_doador_id

      t.timestamps
    end
  end
end
