class AddColumnTipoUsuario < ActiveRecord::Migration
  def up
    add_column :usuarios, :tipo_usuario_id, :integer
  end

  def down
    remove_column :usuarios, :tipo_usuario_id
  end
end
