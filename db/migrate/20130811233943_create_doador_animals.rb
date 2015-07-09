class CreateDoadorAnimals < ActiveRecord::Migration
  def change
    create_table :doador_animals do |t|
      t.integer :usuario_id
      t.datetime :doador_desde
      t.integer :status_doador_id

      t.timestamps
    end
  end
end
