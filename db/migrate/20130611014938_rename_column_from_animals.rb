class RenameColumnFromAnimals < ActiveRecord::Migration
  def up
      rename_column :animals, :status, :status_ativ_id
  end

  def down
  end
end
