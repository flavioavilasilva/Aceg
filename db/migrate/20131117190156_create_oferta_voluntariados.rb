class CreateOfertaVoluntariados < ActiveRecord::Migration
  def change
    create_table :oferta_voluntariados do |t|
      t.string :titulo
      t.text :descricao
      t.integer :usuario_id
      t.integer :vigencia_oferta
      t.integer :status_oferta_voluntariado

      t.timestamps
    end
  end
end
