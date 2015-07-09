class CreateAdocaoAnimais < ActiveRecord::Migration
  def change
    create_table :adocao_animais do |t|
      t.integer :doador_animal_id
      t.integer :adotando_animal_id
      t.integer :animal_id

      t.timestamps
    end
  end
end
