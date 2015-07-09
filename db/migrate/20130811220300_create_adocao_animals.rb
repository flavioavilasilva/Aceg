class CreateAdocaoAnimals < ActiveRecord::Migration
  def change
    create_table :adocao_animals do |t|
      t.integer :doador_id
      t.integer :adotando_id
      t.binary :confirmacao_doador
      t.binary :confirmacao_adotando
      t.datetime :data_adocao
      t.integer :animal_id

      t.timestamps
    end
  end
end
