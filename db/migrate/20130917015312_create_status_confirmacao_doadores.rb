class CreateStatusConfirmacaoDoadores < ActiveRecord::Migration
  def change
    create_table :status_confirmacao_doadores do |t|
      t.string :status_confirmacao_doador

      t.timestamps
    end
  end
end
