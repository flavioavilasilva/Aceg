class CreateGeneros < ActiveRecord::Migration
  def change
    create_table :generos do |t|
      t.string :genero_animal

      t.timestamps
    end
  end
end
