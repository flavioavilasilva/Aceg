class AddAttachmentFotoToIndicacoes < ActiveRecord::Migration
  def self.up
    change_table :indicacoes do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :indicacoes, :foto
  end
end
