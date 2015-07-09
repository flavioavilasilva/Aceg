class CreateEnderecoPerfis < ActiveRecord::Migration
  def change
    create_table :endereco_perfis do |t|
      t.string :rua
      t.string :numero
      t.string :cep
      t.integer :estado_id
      t.integer :cidade_id

      t.timestamps
    end
  end
end
