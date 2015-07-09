class CreateAdotandoAnimais < ActiveRecord::Migration
  def change
    create_table :adotando_animais do |t|
      t.integer :usuario_id
      t.integer :status_adotando_id

      t.timestamps
    end
  end
end
