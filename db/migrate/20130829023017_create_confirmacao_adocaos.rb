class CreateConfirmacaoAdocaos < ActiveRecord::Migration
  def change
    create_table :confirmacao_adocaos do |t|
      t.integer :adocao_animal_id
      t.binary :confirmacao_doador
      t.binary :confirmacao_adotando
      t.string :key

      t.timestamps
    end
  end
end
