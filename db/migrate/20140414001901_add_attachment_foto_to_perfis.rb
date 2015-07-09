class AddAttachmentFotoToPerfis < ActiveRecord::Migration
  def self.up
    change_table :perfis do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :perfis, :foto
  end
end
