class CreateGaleriaAnimais < ActiveRecord::Migration
  def change
    create_table :galeria_animais do |t|
      t.integer :animal_id
      t.string :descricao

      t.timestamps
    end
  end
end
