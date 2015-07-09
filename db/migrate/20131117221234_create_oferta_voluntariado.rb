class CreateOfertaVoluntariado < ActiveRecord::Migration
  def change
    create_table :oferta_voluntariado do |t|
      t.string :titulo
      t.text :descricao
      t.integer :usuario_id
      t.integer :vigencia_oferta_id

      t.timestamps
    end
  end
end
