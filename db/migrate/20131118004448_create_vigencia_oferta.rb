class CreateVigenciaOferta < ActiveRecord::Migration
  def change
    create_table :vigencia_oferta do |t|
      t.integer :vigencia

      t.timestamps
    end
  end
end
