class AddAttachmentFotoToAnimais < ActiveRecord::Migration
  def self.up
    change_table :animais do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :animais, :foto
  end
end
