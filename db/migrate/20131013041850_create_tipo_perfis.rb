class CreateTipoPerfis < ActiveRecord::Migration
  def change
    create_table :tipo_perfis do |t|
      t.string :tipo_perfil

      t.timestamps
    end
  end
end
