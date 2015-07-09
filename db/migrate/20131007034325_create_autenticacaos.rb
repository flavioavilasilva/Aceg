class CreateAutenticacaos < ActiveRecord::Migration
  def self.up
    create_table :autenticacaos do |t|
      t.integer :usuario_id
      t.string :provider
      t.string :uid
      t.timestamps
    end
  end

  def self.down
    drop_table :autenticacaos
  end
end
