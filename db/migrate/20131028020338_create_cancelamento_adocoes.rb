class CreateCancelamentoAdocoes < ActiveRecord::Migration
  def change
    create_table :cancelamento_adocoes do |t|
      t.integer :adocao_animal_id
      t.integer :doador_animal_id
      t.integer :adotando_animal_id
      t.integer :motivo_cancelamento_id
      t.text :motivo_cancelamento

      t.timestamps
    end
  end
end
