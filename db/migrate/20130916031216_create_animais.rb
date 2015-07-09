class CreateAnimais < ActiveRecord::Migration
  def change
    create_table :animais do |t|
      t.string :nome
      t.integer :tipo_animal_id
      t.integer :idade_id
      t.integer :genero_id
      t.integer :porte_animal_id
      t.float :peso
      t.integer :cor_id
      t.text :descricao_animal
      t.integer :estado_id
      t.integer :cidade_id
      t.string :rua
      t.string :numero_rua
      t.integer :status_animal_id
      t.integer :prioridade_adocao_id
      t.integer :doador_animal_id

      t.timestamps
    end
  end
end
