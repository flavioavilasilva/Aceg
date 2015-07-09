class CreateTipoAnimais < ActiveRecord::Migration
  def change
    create_table :tipo_animais do |t|
      t.string :tipo_animal

      t.timestamps
    end
  end
end
