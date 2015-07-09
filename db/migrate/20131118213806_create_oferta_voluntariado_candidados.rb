class CreateOfertaVoluntariadoCandidados < ActiveRecord::Migration
  def change
    create_table :oferta_voluntariado_candidados do |t|
      t.integer :oferta_voluntariado_id
      t.integer :usuario_id
      t.binary :status_cadidatura

      t.timestamps
    end
  end
end
