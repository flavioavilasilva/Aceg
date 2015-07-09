class AddTipoUsuarioIdToPerfis < ActiveRecord::Migration
  def change
    add_column :perfis, :tipo_usuario_id, :integer
  end
end
