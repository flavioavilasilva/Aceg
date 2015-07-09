class CreateAdotandoAnimals < ActiveRecord::Migration
  def change
    create_table :adotando_animals do |t|
      t.integer :usuario_id
      t.datetime :adotando_desde
      t.integer :status_adotando_id

      t.timestamps
    end
  end
end
