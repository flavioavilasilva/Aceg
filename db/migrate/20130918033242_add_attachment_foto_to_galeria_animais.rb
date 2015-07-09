class AddAttachmentFotoToGaleriaAnimais < ActiveRecord::Migration
  def self.up
    change_table :galeria_animais do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :galeria_animais, :foto
  end
end
