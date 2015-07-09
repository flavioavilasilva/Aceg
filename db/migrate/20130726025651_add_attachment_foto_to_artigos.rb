class AddAttachmentFotoToArtigos < ActiveRecord::Migration
  def self.up
    change_table :artigos do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :artigos, :foto
  end
end
