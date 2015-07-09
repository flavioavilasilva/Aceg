class AddAttachmentFotoToEstabelecimentos < ActiveRecord::Migration
  def self.up
    change_table :estabelecimentos do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :estabelecimentos, :foto
  end
end
