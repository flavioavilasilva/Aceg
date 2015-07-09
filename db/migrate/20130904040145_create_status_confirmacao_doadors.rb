class CreateStatusConfirmacaoDoadors < ActiveRecord::Migration
  def change
    create_table :status_confirmacao_doadors do |t|
      t.string :status_confirmacao_doador

      t.timestamps
    end
  end
end
