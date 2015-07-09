class CreatePrioridadeAdocoes < ActiveRecord::Migration
  def change
    create_table :prioridade_adocoes do |t|
      t.string :prioridade_adocao

      t.timestamps
    end
  end
end
