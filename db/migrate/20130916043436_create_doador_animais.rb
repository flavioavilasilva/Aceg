class CreateDoadorAnimais < ActiveRecord::Migration
  def change
    create_table :doador_animais do |t|
      t.integer :usuario_id
      t.string :status_doador_id

      t.timestamps
    end
  end
end
