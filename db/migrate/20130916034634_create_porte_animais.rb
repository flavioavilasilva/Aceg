class CreatePorteAnimais < ActiveRecord::Migration
  def change
    create_table :porte_animais do |t|
      t.string :porte_animal

      t.timestamps
    end
  end
end
