class CreateStatusConfirmacaoAdotandos < ActiveRecord::Migration
  def change
    create_table :status_confirmacao_adotandos do |t|
      t.string :status_confirmacao_adotando

      t.timestamps
    end
  end
end
